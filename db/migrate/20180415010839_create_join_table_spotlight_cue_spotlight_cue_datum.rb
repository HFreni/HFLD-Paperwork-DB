class CreateJoinTableSpotlightCueSpotlightCueDatum < ActiveRecord::Migration[5.2]
  def change
    create_join_table :spotlight_cues, :spotlight_cue_data do |t|
      # t.index [:spotlight_cue_id, :spotlight_cue_datum_id]
      # t.index [:spotlight_cue_datum_id, :spotlight_cue_id]
    end
  end
end
