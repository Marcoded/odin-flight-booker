class RemoveBookingIdFromPassenger < ActiveRecord::Migration[7.0]
  def change
    remove_reference :passengers, :booking_id, null: false, foreign_key: true
  end
end
