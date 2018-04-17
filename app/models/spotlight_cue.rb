class SpotlightCue < ApplicationRecord
  has_many :spotlight_sizes
  has_many :spotlight_intensities
  has_many :spotlight_actions

  has_many :cue_spotlights, dependent: :destroy, inverse_of: :spotlight_cue
  has_many :spotlights, through :cue_spotlights
end
