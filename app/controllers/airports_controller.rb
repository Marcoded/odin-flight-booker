class AirportsController < ApplicationController


  def new
    @airport = Airport.new
  end


  def index
    @airports = Airport.all
  end
end
