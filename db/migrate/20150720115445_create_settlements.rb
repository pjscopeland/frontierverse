class CreateSettlements < ActiveRecord::Migration
  def change
    create_table :settlements do |t|
      t.references :planet, index: true, foreign_key: true
      t.string :name
      t.string :settlement_type

      t.timestamps null: false
    end
  end
end
