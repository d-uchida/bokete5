class AddOdaiIdToBeke < ActiveRecord::Migration[5.1]
  def change
    add_column :bokes, :second_odai_id, :integer
  end
end
