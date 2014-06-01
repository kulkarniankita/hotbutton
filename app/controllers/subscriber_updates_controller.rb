class SubscriberUpdatesController < ApplicationController

  def new
    @update = SubscriberUpdate.new()
  end

  def create
    @update = SubscriberUpdate.new(update_params)
    subscribers = @update.campaign.subscribers

    email_list = subscribers.each_with_object([]) do | sub, collection |
      collection << sub.email
    end.uniq.reject { |c| c.empty? }

    phone_list = subscribers.each_with_object([]) do | sub, collection |
      collection << sub.phone
    end.uniq.reject { |c| c.empty? }

    # binding.pry

    if @update.save


      if phone_list.size > 0
        account_id = 'AC7e360eaa4567230b22fd5156242eb307'
        account_oath = 'c15ab4ac583cf6767683328987e81261'
        client = Twilio::REST::Client.new(account_id, account_oath)

        phone_list.each do | number |
        client.account.messages.create(
              :from => 6475577425, #Twilio number
              :to => number,
              :body => @update.short_data
            )
        end
      end

      if email_list.size > 0
        url = "https://sendgrid.com/api/mail.send.json"
        smtpapi_header = {
          "to" => email_list
        }

        response = HTTParty.post url, :body => {
          "api_user" => "kulkarniankita09",
          "api_key" => "happymonkey9",
          "to" => "override.this@email.com",
          "from" => "tips@hotbutton.com", #from_email
          "subject" => "HotButton Update: #{@update.campaign.hashtags.first.name}",
          "html" => @update.long_data,
          "x-smtpapi" => JSON.generate(smtpapi_header)
        }
      end

      redirect_to :root
    end

  end

  private

  def update_params
    params.require(:subscriber_update).permit(:short_data,:long_data, :subject, :campaign_id)
  end

end
