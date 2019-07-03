Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  post '/signin', to: 'users#signin'
  get '/validate', to: 'users#validate' 
end
