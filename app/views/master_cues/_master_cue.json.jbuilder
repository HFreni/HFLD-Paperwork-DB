# frozen_string_literal: true

json.extract! master_cue, :id, :lx_cue, :spot_cue, :cue_info, :scene, :song, :created_at, :updated_at
json.url master_cue_url(master_cue, format: :json)
