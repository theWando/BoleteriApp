class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :country
      t.string :city
      t.integer :number_of_rooms_single
      t.integer :number_of_rooms_doubles
      t.integer :number_of_rooms_married

      t.timestamps
    end
  end
end
