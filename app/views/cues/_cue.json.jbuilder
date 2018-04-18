# frozen_string_literal: true

json.extract! cue, :id, :lx_cue, :spot_cue, :cue_info, :scene, :song, :created_at, :updated_at
json.url cue_url(cue, format: :json)
