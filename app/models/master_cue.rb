class MasterCue < ApplicationRecord
    has_many :cue_spotlights, through :cue_master_cues
    has_many :cue_master_cues, dependent: :destroy, inverse_of: :master_cue
end
