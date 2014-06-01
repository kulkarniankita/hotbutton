class CreateHashtags < ActiveRecord::Migration
  def change
    create_table :hashtags do |t|
      t.string :name
      t.references :campaign

      t.timestamps
    end
  end
end
