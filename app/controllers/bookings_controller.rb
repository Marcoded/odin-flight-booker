class BookingsController < ApplicationController

  


  def index
  end

  def new
    p "initializing booking"
    puts "\e[32mInitializing booking\e[0m"
    @booking = Booking.new
    @booking.flight_id = params[:flight_id]
    @num_passengers = params[:num_passengers]

  end

  def create
    redirect_to new_booking_path
  end


  private
  
  def booking_params
    params.require(:booking).permit(:flight_id, :num_passengers)
  end

end
