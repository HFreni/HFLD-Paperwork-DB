class CreateSpotlights < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlights do |t|
      t.string :spotlight_name
      t.text :spotlight_notes
      t.references :operator
      t.references :spotlight_model
      t.references :position

      t.timestamps
    end
  end
end
