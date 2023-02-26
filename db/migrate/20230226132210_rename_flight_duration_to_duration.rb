class RenameFlightDurationToDuration < ActiveRecord::Migration[7.0]
  def change
    rename_column :flights, :flight_duration, :duration
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
