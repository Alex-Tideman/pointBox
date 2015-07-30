Rails.application.routes.draw do

  namespace :admin do
    resources :users, :rewards
  end

  resources :users, only: [:show]
  resources :rewards, only: [:index, :show]


  root to: "welcome#index"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: "logout"

end
