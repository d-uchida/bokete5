class AddDefaultToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :account_name, "null"
    change_column_default :users, :nickname, "null"
    change_column_default :users, :sex, "null"
    change_column_default :users, :prefecture, "null"
  end
end
