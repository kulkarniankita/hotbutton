class SubscribersController < ApplicationController

  def create
    @sub = Subscriber.new(subscriber_params)
    if @sub.save
      redirect_to @sub.campaign, notice: "Now you'll receive all notices for this hashtag."
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email, :phone, :campaign_id)
  end

end
