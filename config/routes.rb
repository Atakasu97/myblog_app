Rails.application.routes.draw do

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'

  get '/new', to: 'microposts#new'
  post '/create', to: 'microposts#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :microposts
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
