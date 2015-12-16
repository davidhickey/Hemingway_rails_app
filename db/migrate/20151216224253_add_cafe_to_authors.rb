class AddCafeToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :cafe, :reference
  end
end
