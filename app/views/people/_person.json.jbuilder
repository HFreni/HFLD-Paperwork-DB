# frozen_string_literal: true

json.extract! person, :id, :person_fname, :person_lname, :person_email, :person_phone, :person_role, :created_at, :updated_at
json.url person_url(person, format: :json)
