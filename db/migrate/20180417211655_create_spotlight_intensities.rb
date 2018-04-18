class CreateSpotlightIntensities < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlight_intensities do |t|
      t.belongs_to :spotlight_cue, index: true
      t.string :name
      t.text :description
      t.integer :intensity

      t.timestamps
    end
  end
end
