class CreateSecondOdais < ActiveRecord::Migration[5.1]
  def change
    create_table :second_odais do |t|

      t.timestamps
    end
  end
end
