class AddColumnToSecondOdais < ActiveRecord::Migration[5.1]
  def change
    add_column :second_odais, :user_id, :integer
    add_column :second_odais, :photo_id, :string
    add_column :second_odais, :title, :string
    add_column :second_odais, :tag, :string
    add_column :second_odais, :categery, :string, null: false
    add_column :second_odais, :right, :string, null: false
  end
end
