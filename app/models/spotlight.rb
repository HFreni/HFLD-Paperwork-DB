class Spotlight < ApplicationRecord
    has_many :color_frames, dependent: :destroy, inverse_of: :spotlight
    has_many :colors, through: :color_frames
    
    has_many :spotlight_positions
    has_many :spotlight_models
    has_many :people
    
    accepts_nested_attributes_for :color_frames, allow_destroy: true
end
