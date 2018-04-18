# frozen_string_literal: true

# create color_frames table, a table that assigns colors to spotlights in a specific frame position
class CreateColorFrames < ActiveRecord::Migration[5.2]
  def change
    create_table :color_frames do |t|
      t.references :color, foreign_key: true
      t.references :spotlight, foreign_key: true
      t.integer :frame_position

      t.timestamps
    end
  end
end
