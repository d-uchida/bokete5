class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :user_id, foreign_key: true
      t.integer :star, null: false
      t.string :text

      t.timestamps
    end
  end
end
