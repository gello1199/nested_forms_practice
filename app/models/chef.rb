class Chef < ApplicationRecord
    has_many :meals
    has_many :customers, through: :meals
end
