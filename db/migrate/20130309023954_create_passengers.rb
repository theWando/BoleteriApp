class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :document_type
      t.string :document

      t.timestamps
    end
  end
end
