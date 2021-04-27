Rails.application.routes.draw do
  resources :profiles
  resources :admins, only: %i[show edit update destroy]
  get '/sign_up', to: 'admins#new'
  post '/sign_up', to: 'admins#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'home#index'
end
 