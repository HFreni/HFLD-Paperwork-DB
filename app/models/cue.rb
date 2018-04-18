# frozen_string_literal: true

# Cue model
class Cue < ApplicationRecord
  has_many :spotlights, through: :cue_spotlights
  has_many :cue_spotlights, dependent: :destroy, inverse_of: :cue

  belongs_to :action, class_name: 'SpotlightAction', optional: true
  belongs_to :intensity, class_name: 'SpotlightIntensity', optional: true
  belongs_to :size, class_name: 'SpotlightSize', optional: true

  accepts_nested_attributes_for :cue_spotlights, allow_destroy: true
end
