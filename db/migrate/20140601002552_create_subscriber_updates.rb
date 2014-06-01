class CreateSubscriberUpdates < ActiveRecord::Migration
  def change
    create_table :subscriber_updates do |t|

      t.timestamps

      t.string :title
      t.text :body
    end
  end
end
