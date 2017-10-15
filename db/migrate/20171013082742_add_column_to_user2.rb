class AddColumnToUser2 < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :account_name, :string, null: false, after: :email
    add_column :users, :nickname, :string, null: false
    add_column :users, :sex, :string, null: false
    add_column :users, :prefecture, :string, null: false
    add_column :users, :birthday, :datetime
  end
end
