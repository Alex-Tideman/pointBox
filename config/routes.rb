Rails.application.routes.draw do

  namespace :admin do
    resources :users, :rewards
  end

  resources :users, only: [:show, :new, :create]
  resources :rewards, only: [:index, :show] do
    post '/redeems', to: 'redeems#purchase'
  end


  root to: "welcome#index"
  get '/admin/dashboard', to: 'admin/dashboard#index'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: "logout"

end
