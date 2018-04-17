class Color < ApplicationRecord
    has_many :color_frames
    has_many :spotlights, through: :color_frame
    accepts_nested_attributes_for :color_frames
    
    
    def full_name
      "#{gel_num} - #{gel_name}"
    end
end
