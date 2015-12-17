class SorceryCore < ActiveRecord::Migration
  def change
    create_table :creators do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.references :bar
      t.string :name
      t.string :username
      t.text :bio

      t.timestamps
    end

    add_index :creators, :email, unique: true
  end
end
