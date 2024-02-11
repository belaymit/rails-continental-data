class Country < ApplicationRecord
  validates :name, presence: true
  validates :capital_city, presence: true
  validates :other_cities, presence: true
  validates :currencies, presence: true
  validates :location, presence: true
  validates :known_by, presence: true
  validates :map, presence: true
  validates :flag, presence: true
end
