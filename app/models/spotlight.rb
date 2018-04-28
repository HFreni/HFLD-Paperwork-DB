# frozen_string_literal: true

# Spotlight model
class Spotlight < ApplicationRecord
  has_many :color_frames, dependent: :destroy, inverse_of: :spotlight
  has_many :colors, through: :color_frames

  has_many :cue_spotlights, dependent: :destroy, inverse_of: :spotlight
  has_many :cues, through: :cue_spotlights

  belongs_to :operator, class_name: 'Person', optional: true
  belongs_to :position, class_name: 'SpotlightPosition', optional: true
  belongs_to :model, class_name: 'SpotlightModel', optional: true

  accepts_nested_attributes_for :color_frames, allow_destroy: true
  accepts_nested_attributes_for :cue_spotlights, allow_destroy: true

  validates_length_of :spotlight_name, maximum: 64, message: 'Fuck You @loansindi'
  validates_length_of :spotlight_notes, maximum: 256, message: 'Fuck You @loansindi'

  def descriptive_name
    "#{spotlight_name} (#{position.position_name})"
  end

end
