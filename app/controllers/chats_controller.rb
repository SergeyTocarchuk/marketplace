class ChatsController < ApplicationController

  def create
    @chat = current_user.chats.create(chat_params)

    redirect_to chat_messages_path(@chat)
  end

  private

  def chat_params
    params.permit(:trader_id)
  end

end
