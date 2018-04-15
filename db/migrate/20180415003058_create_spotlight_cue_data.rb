class CreateSpotlightCueData < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlight_cue_data do |t|
      t.integer :spotlight_id
      t.integer :color
      t.integer :size
      t.integer :intensity
      t.integer :time
      t.text :pickup

      t.timestamps
    end
  end
end
