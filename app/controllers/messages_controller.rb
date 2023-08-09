class MessagesController < ApplicationController

  before_action :set_chat

  def index
    @messages = @chat.messages
  end

  def create
    byebug
    current_user.messages.create(message_params.merge(chat: @chat))

    redirect_to chat_messages_path(@chat)
  end

  private

  def set_chat
    @chat = Chat.find(params[:chat_id])
  end

  def message_params
    params.permit(:content)
  end

end
