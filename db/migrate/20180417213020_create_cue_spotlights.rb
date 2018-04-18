# frozen_string_literal: true

# create the cue_spotlights table
class CreateCueSpotlights < ActiveRecord::Migration[5.2]
  def change
    create_table :cue_spotlights do |t|
      t.references :spotlight_cue
      t.references :spotlight

      t.timestamps
    end
  end
end
