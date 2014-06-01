
class SubscriberUpdate < ActiveRecord::Base
  after_commit :send_notifications


def send_notifications

  account_id = 'AC7e360eaa4567230b22fd5156242eb307'
  account_oath = 'c15ab4ac583cf6767683328987e81261'
  client = Twilio::REST::Client.new(account_id, account_oath)

  client.account.messages.create(
        :from => 6475577425, #Twilio number
        :to => 4168071164,
        :body => self.short_data
      )
  # send stuff in here
end

end

# message
# date

# twilio and sendgrid stuff?

# == Schema Information
#
# Table name: subscriber_updates
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  title      :string(255)
#  body       :text
#  short_data :text
#  long_data  :text
#  subject    :text
#
