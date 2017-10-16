class ChangeDatatypeUserIdOfSecondOdais < ActiveRecord::Migration[5.1]
  def change
    change_column :second_odais, :photo_id, :integer
  end
end
