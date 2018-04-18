# frozen_string_literal: true

json.extract! cue_master_cue, :id, :references, :references, :created_at, :updated_at
json.url cue_master_cue_url(cue_master_cue, format: :json)
