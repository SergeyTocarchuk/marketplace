class ChatsController < ApplicationController

  def create
    byebug
    @chat = Chat.create(chat_params)

    redirect_to chat_path(@chat)
  end

  def show

  end

  private

  def chat_params
    params.permit(:trader_id, :user_id)
  end

end
