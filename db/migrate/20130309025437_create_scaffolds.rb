class CreateScaffolds < ActiveRecord::Migration
  def change
    create_table :scaffolds do |t|
      t.string :Vehicle
      t.string :type
      t.string :name
      t.string :serial_code
      t.integer :seats

      t.timestamps
    end
  end
end
