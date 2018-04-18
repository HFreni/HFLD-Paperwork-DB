# frozen_string_literal: true

# CueSpotlight model
class CueSpotlight < ApplicationRecord
  belongs_to :spotlight
  belongs_to :cue
end
