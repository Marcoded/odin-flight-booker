class BookingsController < ApplicationController

  before_action :log_params


  def index
  end

  def new
    p "initializing booking"
    puts "\e[32mInitializing booking\e[0m"
    @booking = Booking.new
    @booking.flight_id = params[:flight_id]
    @booking.num_passengers = params[:num_passengers]

  end

  def create
  end


  private
  
  def booking_params
    params.require(:booking).permit(:flight_id, :num_passengers)
  end

end
