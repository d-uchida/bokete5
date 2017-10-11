class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :image, null:false
      t.timestamps
    end
  end
end
