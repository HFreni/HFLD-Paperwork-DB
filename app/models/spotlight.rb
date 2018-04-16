class Spotlight < ApplicationRecord
    has_many :color_frames
    has_many :colors, through: :color_frames
    accepts_nested_attributes_for :color_frames
end
