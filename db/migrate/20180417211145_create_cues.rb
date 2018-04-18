# frozen_string_literal: true

# create the cues table, i have no idea what this does
class CreateCues < ActiveRecord::Migration[5.2]
  def change
    create_table :cues do |t|
      t.float :lx_cue
      t.float :spot_cue
      t.text :cue_info
      t.boolean :scene
      t.boolean :song

      t.timestamps
    end
  end
end
