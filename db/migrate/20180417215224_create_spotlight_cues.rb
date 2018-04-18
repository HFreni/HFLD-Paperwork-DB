# frozen_string_literal: true

# create the spotlight_cues table
class CreateSpotlightCues < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlight_cues do |t|
      t.references :color, foreign_key: true
      t.references :spotlight_size, foreign_key: true
      t.references :spotlight_intensity, foreign_key: true
      t.references :spotlight_action, foreign_key: true
      t.integer :time
      t.text :description

      t.timestamps
    end
  end
end
