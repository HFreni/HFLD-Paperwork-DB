class WipeOldSpotlightCueStuff < ActiveRecord::Migration[5.2]
  def change
    # cues table

    # spotlight_actions table
    drop_table :spotlight_actions do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end

    # spotlight_intensities table\
    drop_table :spotlight_intensities do |t|
      t.string :name
      t.text :description
      t.integer :intensity

      t.timestamps
    end

    # spotlight_sizes table
    drop_table :spotlight_sizes do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end

    # cue_spotlights table
    drop_table :cue_spotlights do |t|
      t.references :cue, foreign_key: true
      t.references :spotlight, foreign_key: true
      t.references :size
      t.references :action
      t.integer :intensity
      t.integer :time
      t.text :description

      t.timestamps
    end

    drop_table :cues do |t|
      t.float :lx_cue
      t.float :spot_cue
      t.text :cue_info
      t.boolean :scene
      t.boolean :song

      t.timestamps
    end

  end
end
