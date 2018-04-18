class CreateCueMasterCues < ActiveRecord::Migration[5.2]
  def change
    create_table :cue_master_cues do |t|
      t.references :master_cue
      t.references :cue_spotlight

      t.timestamps
    end
  end
end
