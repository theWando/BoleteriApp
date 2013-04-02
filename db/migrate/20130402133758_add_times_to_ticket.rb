class AddTimesToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :times, :integer
  end
end
