# frozen_string_literal: true

# CueSpotlight model
class CueSpotlight < ApplicationRecord
  belongs_to :spotlight
  belongs_to :cue

  belongs_to :action, class_name: 'SpotlightAction', optional: true
  belongs_to :size, class_name: 'SpotlightSize', optional: true
end
