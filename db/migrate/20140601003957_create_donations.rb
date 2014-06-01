class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|

      t.timestamps
      t.integer :amount
      t.string :recipient
    end
  end
end
