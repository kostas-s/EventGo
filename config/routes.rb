Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :events
  root 'events#index'
  get '/events', to: 'events#index'
  get '/sessions/new', to: 'sessions#new'
  post '/users/log_in', to: 'users#log_in'
  post '/users/show', to: 'users#show'
  post '/users/sign_out', to: 'users#sign_out'
end
