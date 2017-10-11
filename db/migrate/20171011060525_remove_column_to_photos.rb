class RemoveColumnToPhotos < ActiveRecord::Migration[5.1]
  def change
    remove_column :photos, :photo_id, :string
  end
end
