class SubscriberUpdatesController < ApplicationController

  def new
    @update = SubscriberUpdate.new()
  end

  def create
    @update = SubscriberUpdate.new(update_params)
    @update.save!
    redirect_to :root
  end

  private

  def update_params
    params.require(:subscriber_update).permit(:short_data,:long_data, :subject)
  end

end
