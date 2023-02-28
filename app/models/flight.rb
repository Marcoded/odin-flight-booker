class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
  has_many :bookings
  def self.available_dates
    where("start_date > ?", Date.today).order(start_date: :asc).pluck(:start_date).uniq
  end
  
end
