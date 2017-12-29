class ReadingsController < ApplicationController
  def index
    @readings =  Reading.all
    json_response(@readings)
  end

  def create
    binding.pry
    @reading = Reading.create!(reading_params)
    ActionCable.server.broadcast 'readings'
    json_response(@reading)
  end

  private


  def reading_params
    params.permit(:temperature, :humidity)
  end

end
