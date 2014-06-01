class AddConfigToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :config, :text
  end
end
