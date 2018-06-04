Rails.application.routes.draw do
  get 'sessions/new'
  root 'top_page#index'

  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
end
