class Color < ApplicationRecord
    has_many :color_frames
    has_many :spotlights, through: :color_frame
    accepts_nested_attributes_for :color_frames
    
    
    def full_name
      "#{gel_num} - #{gel_name}"
    end
    
    def luma
      rgb = gel_hex.gsub(/^\#/,'').scan(/../).map{|x| x.hex}
      r = rgb[0]
      g = rgb[1]
      b = rgb[2]

      Math.sqrt(0.299 * r**2 + 0.587 * g**2 + 0.114 * b**2).round
    end
end
