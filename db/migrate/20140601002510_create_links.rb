class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|

      t.timestamps

      t.string :name
      t.string :url
      t.string :description

      t.references :campaign

    end
  end
end
