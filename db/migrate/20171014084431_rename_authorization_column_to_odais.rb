class RenameAuthorizationColumnToOdais < ActiveRecord::Migration[5.1]
  def change
    rename_column :odais, :authorization, :right
  end
end
