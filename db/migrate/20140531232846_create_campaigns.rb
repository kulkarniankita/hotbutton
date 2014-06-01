class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|

      t.timestamps
      t.datetime    :activation_date
      t.datetime    :expiration_date

    end
  end
end
