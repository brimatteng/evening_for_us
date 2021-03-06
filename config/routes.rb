Rails.application.routes.draw do
  devise_for :users

  resources :numbers, only:[:index, :new, :create, :destroy]

  root 'home#show'

  post '/places/search' => 'places#search'
  post '/messages/create' => 'messages#create'
  post '/messages/get_info' => 'messages#get_info'
end
