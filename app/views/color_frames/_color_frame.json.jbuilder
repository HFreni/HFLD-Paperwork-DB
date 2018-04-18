# frozen_string_literal: true

json.extract! color_frame, :id, :color_id, :spotlight_id, :frame_position, :created_at, :updated_at
json.url color_frame_url(color_frame, format: :json)
