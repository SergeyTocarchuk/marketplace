class ChatsChannel < ApplicationCable::Channel

  def subscribed
    reject && return
    # reject && return if User.find_by(id: params[:customer_id])

    stream_from "chats/#{params[:chat_id]}"
  end

  def unsubscribed
    stop_stream_from "chats/#{params[:chat_id]}"
  end
end
