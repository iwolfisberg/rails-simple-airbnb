class Flat < ApplicationRecord
  NUMBER_OF_GUESTS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :number_of_guests, presence: true, inclusion: { in: NUMBER_OF_GUESTS }, numericality: { only_integer: true }
  validates :price_per_night, presence: true, numericality: { only_integer: true }
end
