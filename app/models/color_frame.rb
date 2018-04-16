class ColorFrame < ApplicationRecord
  belongs_to :color
  belongs_to :spotlight

  validates_presence_of :color
  validates_presence_of :spotlight

  accepts_nested_attributes_for :color
end
