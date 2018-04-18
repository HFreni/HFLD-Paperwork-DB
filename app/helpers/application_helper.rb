# frozen_string_literal: true

# application helper class
module ApplicationHelper
  def foregound_color_for_luma(luma)
    (luma / 255.0) > 0.5 ? '000000' : 'ffffff'
  end
end
