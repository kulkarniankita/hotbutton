class SubscriberUpdatesController < ApplicationController
  
  def new
    @update = SubscriberUpdate.new()
  end
  
  def create
    @update = SubscriberUpdate.new(subscriberparams)
    @update.save!
    redirect_to :root
  end
  
  private
  
  def subscriberparams
    params.require(:subscriber_update).permit(:short_data,:long_data, :subject)
  end
  
end
