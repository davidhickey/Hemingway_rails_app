class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :author
      t.string :title
      t.text :truth
      t.text :body
      t.text :bev_and_food
      t.references :bar
      t.references :creator

      t.timestamps null: false
    end
  end
end
