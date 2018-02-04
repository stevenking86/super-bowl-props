Rails.application.routes.draw do
  root to: 'homepages#index'

  get '/entry', to: 'homepages#entry', as: :entry

  post '/create_entry', to: 'users#create', as: :create_entry
end
