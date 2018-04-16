class Color < ApplicationRecord
    has_many :color_frames
    has_many :spotlights, through: :color_frame
    accepts_nested_attributes_for :color_frames
end
