class CreateBokes < ActiveRecord::Migration[5.1]
  def change
    create_table :bokes do |t|
      t.integer :odai_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      t.string :text, null: false
      t.string :tag
      t.string :category, null: false

      t.timestamps
    end
  end
end
