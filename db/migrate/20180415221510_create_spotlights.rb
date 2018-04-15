class CreateSpotlights < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlights do |t|
      t.string :spotlight_name
      t.integer :spotlight_op_fk
      t.integer :spotlight_model_fk
      t.text :spotlight_notes
      t.integer :spotlight_position_fk

      t.timestamps
    end
  end
end
