class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.references :system, index: true, foreign_key: true
      t.string :name
      t.string :import_export
      t.integer :cost_decs

      t.timestamps null: false
    end
  end
end
