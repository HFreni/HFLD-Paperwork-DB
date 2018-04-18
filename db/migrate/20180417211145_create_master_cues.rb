class CreateMasterCues < ActiveRecord::Migration[5.2]
  def change
    create_table :master_cues do |t|
      t.float :lx_cue
      t.float :spot_cue
      t.text :cue_info
      t.boolean :scene
      t.boolean :song

      t.timestamps
    end
  end
end
