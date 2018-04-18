# frozen_string_literal: true

# create the spotlight_actions table, i have no idea what this does but something related to tracking spotlight actions
class CreateSpotlightActions < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlight_actions do |t|
      t.belongs_to :spotlight_cue, index: true
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
