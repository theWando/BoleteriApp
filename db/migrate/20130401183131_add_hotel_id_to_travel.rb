class AddHotelIdToTravel < ActiveRecord::Migration
  def change
    add_column :travels, :hotel_id, :integer
  end
end
