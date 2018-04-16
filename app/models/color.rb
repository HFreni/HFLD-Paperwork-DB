class Color < ApplicationRecord
    has_many :color_frames
    has_many :spotlights, through: :color_frame
end
