class CreateTickets < ActiveRecord::Migration
  def change
    drop_table :tickets
    create_table :tickets do |t|
      t.timestamp :bought_on
      t.string :status
      t.string :paid_with
      t.decimal :amount_paid, :precision => 6, :scale => 2
      t.references :user

      t.timestamps
    end
    add_index :tickets, :user_id
  end
end
