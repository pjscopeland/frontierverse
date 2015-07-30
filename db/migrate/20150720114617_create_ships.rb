class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :capacity
      t.integer :mass
      t.integer :guns
      t.integer :missiles
      t.integer :crew
      t.float :acceleration
      t.float :deceleration
      t.references :default_drive, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
