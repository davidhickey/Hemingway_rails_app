class CreateCaves < ActiveRecord::Migration
  def change
    create_table :caves do |t|
      t.string :name
      t.string :address
      t.string :about

      t.timestamps null: false
    end
  end
end
