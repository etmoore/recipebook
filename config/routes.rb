Rails.application.routes.draw do
  root 'public#index'

  get '/about', to: 'public#about'

  resources :users
end
