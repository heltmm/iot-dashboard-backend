class ReadingsController < ApplicationController
  def index
    @readings =  Reading.all
    json_response(@readings)
  end

  def create
    @device = Device.find(params[:device_id])
    @reading = @device.readings.create!(reading_params)
    @readings =  @device.readings
    ActionCable.server.broadcast('readings', readings: @readings)
    json_response(@reading)
  end

  private


  def reading_params
    params.permit(:temperature, :humidity, :device_id)
  end

end
