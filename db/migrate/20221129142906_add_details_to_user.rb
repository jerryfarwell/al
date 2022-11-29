class AddDetailsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :about, :text
    add_column :users, :birthdate, :date
    add_column :users, :country, :string
    add_column :users, :city, :string
  end
end
