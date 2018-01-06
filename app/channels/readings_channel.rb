class ReadingsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "device#{params['device_id']}-readings"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
