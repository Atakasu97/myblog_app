Rails.application.routes.draw do
  root 'static_pages#home'


  get '/help', to: 'static_pages#help'

  get '/new', to: 'microposts#new'
  post '/create', to: 'microposts#create'

  resources :microposts
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
