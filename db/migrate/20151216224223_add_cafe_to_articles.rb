class AddCafeToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :cafe, :reference
  end
end
