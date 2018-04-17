class SpotlightCue < ApplicationRecord
  belongs_to :color
  belongs_to :size
  belongs_to :intensity
  belongs_to :action
end
