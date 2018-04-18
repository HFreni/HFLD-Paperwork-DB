# frozen_string_literal: true

# create the cue_spotlights table
class CreateCueSpotlights < ActiveRecord::Migration[5.2]
  def change
    create_table :cue_spotlights do |t|
      t.references :cue, foreign_key: true
      t.references :spotlight, foreign_key: true
      t.references :size
      t.references :intensity
      t.references :action
      t.integer :time
      t.text :description
      
      t.timestamps
    end
  end
end
