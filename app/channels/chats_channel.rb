class ChatsChannel < ApplicationCable::Channel

  def subscribed
    reject && return

    stream_from "chats/1"
  end

  def unsubscribed
    stop_stream_from "chats/1"
  end
end
