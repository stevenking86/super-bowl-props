Rails.application.routes.draw do
  root to: 'homepages#index'

  get '/entry', to: 'homepages#entry', as: :entry
  get '/users/:id', to: 'users#show', as: :user

  post '/create_entry', to: 'users#create', as: :create_entry
end
