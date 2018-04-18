# frozen_string_literal: true

# Person model
class Person < ApplicationRecord
  # return the full name of a person
  def full_name
    "#{person_lname}, #{person_fname}"
  end
end
