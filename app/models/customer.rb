class Customer < ApplicationRecord
    has_many :meals
    has_many :chefs, through: :meals
end
