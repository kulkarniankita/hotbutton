class AddReferencesToSubscriberUpdates < ActiveRecord::Migration
  def change
    add_reference :subscriber_updates, :campaign, index: true
  end
end
