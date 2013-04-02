class AddDueDateToTravel < ActiveRecord::Migration
  def change
    add_column :travels, :due_date, :timestamp
  end
end
