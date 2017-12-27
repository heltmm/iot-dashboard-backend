class ReadingsController < ApplicationController
  def index
    @readings =  Reading.all
    json_response(@readings)
  end

  def create
    @reading = Reading.create!(reading_params)
    json_response(@reading)
  end

  private


  def reading_params
    params.permit(:temperature, :humidity)
  end

end
