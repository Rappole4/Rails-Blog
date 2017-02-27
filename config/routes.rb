Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :posts
  resources :comments
  get '/index' => 'users#index'
  get '/signup' => 'users#new'
  get '/' => 'sessions#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/edit' => 'users#edit'
  get '/edit' => 'posts#edit'
end
