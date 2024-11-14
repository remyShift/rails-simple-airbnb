class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :number_of_guests, presence: true, numericality: { greater_than: 0 }
  validates :price_per_night, presence: true, numericality: { greater_than: 0 }
end
