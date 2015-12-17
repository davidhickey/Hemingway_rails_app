class AddBarToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :bar, :reference
  end
end
