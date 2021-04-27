Rails.application.routes.draw do
  resources :admins, only: %i[show edit update]
  get '/sign_up', to: 'admins#new'
  post '/sign_up', to: 'admins#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'admins#new'
end
