# frozen_string_literal: true

json.extract! spotlight_intensity, :id, :name, :intensity, :created_at, :updated_at
json.url spotlight_intensity_url(spotlight_intensity, format: :json)
