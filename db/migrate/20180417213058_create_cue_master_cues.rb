class CreateCueMasterCues < ActiveRecord::Migration[5.2]
  def change
    create_table :cue_master_cues do |t|
      t.master_cue :references
      t.cue_spotlight :references

      t.timestamps
    end
  end
end
