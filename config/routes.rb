Rails.application.routes.draw do
  
  #get 'session/new'
  get '/login',to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  get '/signup',to: 'users#new'
  resources :users
  resources :account_activations, only: [:edit]
  root 'static_pages#home'
  

end
