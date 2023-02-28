# Seed the flights table with sample data
airport_codes = ['ATL', 'LAX', 'ORD', 'DFW', 'DEN']

# Define the range of dates to choose from for flight start dates
start_date_range = Date.new(2023, 3, 1)..Date.new(2023, 3, 15)


airport_codes.map {|code| Airport.create(code: code)}


# Iterate over each airport code and create flights with random departure and arrival airports and durations
airport_ids = Airport.pluck(:id) # Get the IDs of all airports in the database
2000.times do
  start_date = start_date_range.to_a.sample
  duration_seconds = rand(2..12).hours.seconds
  duration = Time.at(duration_seconds).utc.strftime("%H:%M:%S")

  start_airport = airport_ids.sample
  arrival_airport = airport_ids.sample
  next if start_airport == arrival_airport

  Flight.create!(
    start_date: start_date,
    duration: duration,
    departure_airport_id: airport_ids.sample,
    arrival_airport_id: airport_ids.sample
  )
end