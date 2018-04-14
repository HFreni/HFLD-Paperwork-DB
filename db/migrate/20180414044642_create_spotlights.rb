class CreateSpotlights < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlights do |t|
      t.string :name
      t.integer :spotlight_op
      t.text :spotlight_notes
      t.integer :spotlight_position

      t.timestamps
    end
  end
end
