class ChatsChannel < ApplicationCable::Channel

  def subscribed
    stream_from "chats/2"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
