class RemoveColumnFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :account_name, :string, null: false, after: :email
    remove_column :users, :nickname, :string, null: false, after: :email
    remove_column :users, :sex, :string, null: false, after: :email
    remove_column :users, :prefecture, :string, null: false,  after: :email
    remove_column :users, :birthday, :datetime, after: :email
  end
end
