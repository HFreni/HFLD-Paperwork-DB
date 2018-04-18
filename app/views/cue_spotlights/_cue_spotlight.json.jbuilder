# frozen_string_literal: true

json.extract! cue_spotlight, :id, :references, :references, :created_at, :updated_at
json.url cue_spotlight_url(cue_spotlight, format: :json)
