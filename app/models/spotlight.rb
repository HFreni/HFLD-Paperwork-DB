class Spotlight < ApplicationRecord
    has_many :color_frames, dependent: :destroy, inverse_of: :spotlight
    has_many :colors, through: :color_frames
    
    belongs_to :spotlight_op, :class_name => "Person", :foreign_key => :spotlight_op, optional: true
    has_many :spotlight_positions
    has_many :spotlight_models
    
    accepts_nested_attributes_for :color_frames, allow_destroy: true
end
