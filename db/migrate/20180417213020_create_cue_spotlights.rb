class CreateCueSpotlights < ActiveRecord::Migration[5.2]
  def change
    create_table :cue_spotlights do |t|
      t.spotlight_cue :references
      t.spotlight :references

      t.timestamps
    end
  end
end
