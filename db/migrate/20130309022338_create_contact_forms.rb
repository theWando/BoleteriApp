class CreateContactForms < ActiveRecord::Migration
  def change
    create_table :contact_forms do |t|
      t.string :type
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
