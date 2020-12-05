Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/garages', to: 'garages#index'
  get '/garages/new', to: 'garages#new'
  post '/garages', to: 'garages#create'
  
  get '/garages/:id/edit', to: 'garages#edit'
  get '/garages/:id', to: 'garages#show'

  patch '/garages/:id', to: 'garages#update'
  
  delete '/garages/:id', to: 'garages#destroy'
end
