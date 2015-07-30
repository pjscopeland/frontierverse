class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.references :system, index: true, foreign_key: true
      t.string :code
      t.string :name
      t.boolean :atmosphere

      t.timestamps null: false
    end
  end
end
