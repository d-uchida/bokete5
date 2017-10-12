class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :account_name, :string, null: false, after: :email
    add_column :users, :nickname, :string, null: false, after: :email
    add_column :users, :sex, :string, null: false, after: :email
    add_column :users, :prefecture, :string, null: false,  after: :email
    add_column :users, :birthday, :datetime, after: :email
  end
end
