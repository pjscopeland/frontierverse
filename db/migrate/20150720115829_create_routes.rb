class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.references :system1, index: true, foreign_key: true
      t.references :system2, index: true, foreign_key: true
      t.integer :distance_cents

      t.timestamps null: false
    end
  end
end
