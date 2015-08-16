Rails.application.routes.draw do
  root 'public#index'

  get '/about', to: 'public#about'
end
