class ChangeDefaultToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :account_name, ""
    change_column_default :users, :nickname, ""
    change_column_default :users, :sex, ""
    change_column_default :users, :prefecture, ""
  end
end
