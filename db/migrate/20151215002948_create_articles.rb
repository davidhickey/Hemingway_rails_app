class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.text :truth
      t.text :body
      t.text :bev_and_food

      t.timestamps null: false
    end
  end
end
