class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :bokete_id, null: false, unique: true
      t.string :nickname, null: false
      t.string :prefecture
      t.date :birthday
      t.string :email, null: false, unique: true

      t.timestamps
    end
  end
end
