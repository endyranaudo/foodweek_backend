Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create]
  resources :ingredients, only: [:index, :show, :create, :destroy]
  resources :user_ingredients, only: [:index, :show, :create, :destroy]
  
  post '/signin', to: 'users#signin'
  get '/validate', to: 'users#validate' 
  get '/user/ingredients', to: 'users#ingredients'
end
