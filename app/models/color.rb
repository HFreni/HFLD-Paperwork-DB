# frozen_string_literal: true

# Color model
class Color < ApplicationRecord
  has_many :color_frames
  has_many :spotlights, through: :color_frame
  belongs_to :manufacturer
  accepts_nested_attributes_for :color_frames

  # return the full name of a gel color, number + name
  def full_name
    "#{gel_num} - #{gel_name}"
  end

  # calculate the luma value based on the gel_hex column
  def luma
    rgb = gel_hex.gsub(/^#/, '').scan(/../).map(&:hex)
    Math.sqrt(0.299 * rgb[0]**2 + 0.587 * rgb[1]**2 + 0.114 * rgb[2]**2).round
  end
end
