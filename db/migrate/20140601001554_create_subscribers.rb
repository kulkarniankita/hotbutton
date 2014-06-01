class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :email
      t.string :twitter
      t.string :phone

      t.references :campaign

      t.timestamps
    end
  end
end
