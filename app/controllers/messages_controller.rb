class MessagesController < ApplicationController

  before_action :set_chat

  def index
    @messages = @chat.messages
  end

  def create
    participant = current_user || current_trader
    message = participant.messages.create(message_params.merge(chat: @chat))

    ActionCable.server.broadcast('chats/1', { message: message })
  end

  private

  def set_chat
    @chat = Chat.find(params[:chat_id])
  end

  def message_params
    params.permit(:content)
  end

end
