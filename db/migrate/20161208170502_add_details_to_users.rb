class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :birthdate, :date
  end
end
