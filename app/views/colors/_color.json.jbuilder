# frozen_string_literal: true

json.extract! color, :id, :gel_num, :gel_name, :gel_hex, :manufacturer_fk, :created_at, :updated_at
json.url color_url(color, format: :json)
