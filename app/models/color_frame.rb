class ColorFrame < ApplicationRecord
  belongs_to :color
  belongs_to :spotlight, optional: true

  validates :color, presence: true
  validates :spotlight, presence: true
end
