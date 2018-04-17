class Spotlight < ApplicationRecord
    has_many :color_frames, dependent: :destroy
    has_many :colors, through: :color_frames
    accepts_nested_attributes_for :color_frames, allow_destroy: true, reject_if: proc { |att| att['frame_position'].blank?}
end
