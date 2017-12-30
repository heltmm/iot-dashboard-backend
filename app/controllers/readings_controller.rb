class ReadingsController < ApplicationController
  def index
    @readings =  Reading.all
    json_response(@readings)
  end

  def create
    binding.pry
    @device = Device.find(:device_id)
    @reading = Device.readings.create!(reading_params)
    @readings =  Reading.all
    ActionCable.server.broadcast('readings', readings: @readings)
    json_response(@reading)
  end

  private


  def reading_params
    params.permit(:temperature, :humidity, :device_id)
  end

end
