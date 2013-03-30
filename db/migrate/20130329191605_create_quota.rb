class CreateQuota < ActiveRecord::Migration
  def change
    create_table :quota do |t|
      t.references :hotel
      t.references :travel
      t.integer :aviable_tickets

      t.timestamps
    end
    add_index :quota, :hotel_id
    add_index :quota, :travel_id
  end
end
