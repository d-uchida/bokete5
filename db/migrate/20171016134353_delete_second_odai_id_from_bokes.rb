class DeleteSecondOdaiIdFromBokes < ActiveRecord::Migration[5.1]
  def change
    remove_column :bokes, :second_odai_id, :integer
  end
end
