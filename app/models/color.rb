class Color < ApplicationRecord
  has_and_belongs_to_many :spotlights
  has_one :gel_manufacturer
end
