class CreateUpgrades < ActiveRecord::Migration
  def change
    create_table :upgrades do |t|
      t.string :name
      t.integer :mass

      t.timestamps null: false
    end
  end
end
