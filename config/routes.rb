Rails.application.routes.draw do
  resources :blogs
  resources :profiles
  resources :mains, only: %i[new create edit update]
  resources :admins, only: %i[show edit update destroy]
  get '/sign_up', to: 'admins#new'
  post '/sign_up', to: 'admins#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'home#index'
end
 