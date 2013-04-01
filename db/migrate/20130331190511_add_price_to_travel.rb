class AddPriceToTravel < ActiveRecord::Migration
  def change
    add_column :travels, :price, :decimal
  end
end
