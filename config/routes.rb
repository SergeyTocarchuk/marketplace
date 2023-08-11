Rails.application.routes.draw do
  devise_for :traders
  devise_for :users

  mount ActionCable.server => '/cable'

  root to: "pages#home"

  resources :traders, only: %i[show]
  resources :users, only: %i[show]
  resources :chats, only: %i[index create] do
    resources :messages, only: %i[index create]
  end

end
