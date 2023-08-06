Rails.application.routes.draw do

  resources :traders, only: %i[show]
  resources :users, only: %i[show]
  resources :chats, only: %i[create show]

end
