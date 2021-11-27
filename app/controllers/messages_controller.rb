class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    band_id = params[:band_id]
    message.band_id = band_id
    message.user = current_user
    if message.save
      redirect_to band_path(band_id, anchor: "chat")
    else
      render "chatrooms/show"
    end

  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
