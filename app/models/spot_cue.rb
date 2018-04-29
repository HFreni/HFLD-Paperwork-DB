class SpotCue < ApplicationRecord

  has_many :spot_cue_spotlights, inverse_of: :spot_cue
  has_many :spotlights, through: :spot_cue_spotlights

  accepts_nested_attributes_for :spot_cue_spotlights, reject_if: :all_blank, allow_destroy: true

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
