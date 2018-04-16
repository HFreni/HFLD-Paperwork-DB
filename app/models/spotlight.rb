class Spotlight < ApplicationRecord
    has_many :color_frames
    has_many :colors, through: :color_frames

    after_update :save_color_frames

    def new_color_frame_attributes=(color_frame_attributes)
        color_frame+attributes.each do |attributes|
            color_frames.build(attributes)
        end
    end
    
    def existing_color_frame_attributes=(color_frame_attributes)
        color_frames.reject(&:new_record?).each do |color_frame|
            attributes = color_frame_attributes[color_frame.id.to_s]
            if attributes
                color_frame.attributes = attributes
            else
                color_frames.delete(color_frame)
            end
        end
    end
    
    def save_color_frame
        color_frames.each do |color_frame|
            color_frame.save(false)
        end
    end
end
