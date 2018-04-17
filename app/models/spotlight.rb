class Spotlight < ApplicationRecord
    has_many :color_frames, dependent: :destroy, inverse_of: :spotlight
    has_many :colors, through: :color_frames
    accepts_nested_attributes_for :color_frames, allow_destroy: true
end
