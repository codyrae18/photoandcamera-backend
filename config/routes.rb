Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :cameras
  resources :albums
  resources :follows
  resources :categories

  namespace :api do
    resources :users, only: [:create, :index, :show]
    patch '/image/:id', to: 'users#update'
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
    get '/profile/:id', to: 'users#show'
    # post '/logout', to: 'users'
  end


  
end
