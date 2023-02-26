class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.date :start_date
      t.time :flight_duration
     

      t.timestamps
    end
  end
end
