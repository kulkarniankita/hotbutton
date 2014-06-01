class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|

      t.timestamps

      t.text :body
      t.references :campaign
      t.string :image
    end
  end
end
