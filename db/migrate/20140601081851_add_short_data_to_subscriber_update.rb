class AddShortDataToSubscriberUpdate < ActiveRecord::Migration
  def change
    add_column :subscriber_updates, :short_data, :text
    add_column :subscriber_updates, :long_data, :text
    add_column :subscriber_updates, :subject, :text
  end
end
