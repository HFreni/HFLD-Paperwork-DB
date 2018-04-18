# frozen_string_literal: true

# CueSpotlight model
class CueSpotlight < ApplicationRecord
  belongs_to :spotlight
  belongs_to :spotlight_cue

  has_many :cue_master_cues, dependent: :destroy, inverse_of: :cue_spotlight
end
