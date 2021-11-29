class BandChatChannel < ApplicationCable::Channel
  def subscribed
    band_chat = Band.find(params[:id])
    stream_for band_chat
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
