class SpotCue < ApplicationRecord

  has_many :spot_cues_spotlights
  has_many :spotlights, through: :spot_cues_spotlights


  @@cue_types = %w[Regular Scene Song]

  validates :cue_type, inclusion: { :in => @@cue_types }
  validates :name, length: { minimum: 2, :maximum => 128 }
  validates :number, presence: true

  def self.cue_types
    @@cue_types
  end

  def descriptive_name
    "#{number}: #{name}"
  end

end
