class AddColumnToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :photo_id, :string
  end
end
