class RemoveImgFromOdais < ActiveRecord::Migration[5.1]
  def change
    remove_column :odais, :img, :string
  end
end
