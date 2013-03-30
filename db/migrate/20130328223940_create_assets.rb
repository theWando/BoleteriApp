class CreateAssets < ActiveRecord::Migration
  def change
    drop_table :assets
    create_table :assets do |t|
      t.string :name
      t.references :hotel

      t.timestamps
    end
    add_index :assets, :hotel_id
  end
end
