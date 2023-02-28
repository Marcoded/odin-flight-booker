class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers

  delegate :departure_airport, to: :flight
  delegate :arrival_airport, to: :flight
end
