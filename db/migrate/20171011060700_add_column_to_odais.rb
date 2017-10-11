class AddColumnToOdais < ActiveRecord::Migration[5.1]
  def change
    add_column :odais, :photo_id, :string
  end
end
