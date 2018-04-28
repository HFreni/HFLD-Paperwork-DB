class CreateSpotCuesSpotlights < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_cues_spotlights do |t|
      t.references :spot_cue, foreign_key: true
      t.references :spotlight, foreign_key: true
      t.string :size
      t.string :intensity
      t.string :action
      t.numeric :time
      t.text :notes

      t.timestamps
    end
  end
end
