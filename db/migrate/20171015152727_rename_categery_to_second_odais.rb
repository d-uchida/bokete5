class RenameCategeryToSecondOdais < ActiveRecord::Migration[5.1]
  def change
    rename_column :second_odais, :categery, :category

  end
end
