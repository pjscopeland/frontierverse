class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name
      t.float :x
      t.float :y

      t.timestamps null: false
    end
  end
end
