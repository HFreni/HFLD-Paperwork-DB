# frozen_string_literal: true

json.extract! spotlight_position, :id, :position_name, :created_at, :updated_at
json.url spotlight_position_url(spotlight_position, format: :json)
