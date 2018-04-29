class CreateSpotCues < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_cues do |t|
      t.numeric :number
      t.numeric :light_cue_number
      t.string :cue_type
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
