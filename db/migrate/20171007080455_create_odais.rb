class CreateOdais < ActiveRecord::Migration[5.1]
  def change
    create_table :odais do |t|
      t.integer :user_id, foreign_key: true
      t.string :img, null: false
      t.string :title
      t.string :tag
      t.string :category, null: false
      t.string :authorization, null: false

      t.timestamps
    end
  end
end
