class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :destination_city
      t.string :destination_country
      t.integer :n_days
      t.integer :n_nights
      t.text :extract
      t.text :detail

      t.timestamps
    end
  end
end
