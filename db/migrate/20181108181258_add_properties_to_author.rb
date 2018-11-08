class AddPropertiesToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :first_name, :string
    add_column :authors, :last_name, :string
    add_column :authors, :homepage, :string
  end
end
