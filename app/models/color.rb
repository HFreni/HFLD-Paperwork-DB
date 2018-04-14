class Color < ApplicationRecord
    validates :id, uniqueness: true
end
