class Meal < ApplicationRecord
  belongs_to :chef
  belongs_to :customer

  validates :chef, :customer, :name, presence: true 

  accepts_nested_attributes_for :chef, :customer

#  just a github check
end
