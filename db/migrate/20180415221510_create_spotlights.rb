class CreateSpotlights < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlights do |t|
      t.string :spotlight_name
      t.text :spotlight_notes

      t.timestamps
    end
  end
end
