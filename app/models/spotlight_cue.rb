# frozen_string_literal: true

# SpotlightCue model
class SpotlightCue < ApplicationRecord
  belongs_to :color
  belongs_to :spotlight_size
  belongs_to :spotlight_intensity
  belongs_to :spotlight_action
end
