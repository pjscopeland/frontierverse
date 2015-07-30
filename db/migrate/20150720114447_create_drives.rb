class CreateDrives < ActiveRecord::Migration
  def change
    create_table :drives do |t|
      t.integer :power
      t.boolean :military
      t.integer :mass

      t.timestamps null: false
    end
  end
end
