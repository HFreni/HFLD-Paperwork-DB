class Person < ApplicationRecord
    def full_name
      "#{person_lname}, #{person_fname}"
    end
end