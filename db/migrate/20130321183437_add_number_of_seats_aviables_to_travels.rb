class AddNumberOfSeatsAviablesToTravels < ActiveRecord::Migration
  def change
    add_column :travels, :number_of_seats_aviables, :integer
  end
end
