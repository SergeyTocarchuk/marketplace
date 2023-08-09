class ChatsController < ApplicationController

  def create
    @chat = Chat.create(chat_params)

    redirect_to chat_messages_path(@chat)
  end

  private

  def chat_params
    params.permit(:trader_id, :user_id)
  end

end
