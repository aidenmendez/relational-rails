Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/schools', to: 'schools#index'
  get '/schools/new', to: 'schools#new'
  get '/schools/:id', to: 'schools#show'
  post '/schools', to: 'schools#create'
  get '/schools/:id/edit', to: 'schools#edit'
  patch '/schools/:id', to: 'schools#update'
  delete '/schools/:id', to: 'schools#destroy' 

  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show'
  get '/schools/:id/students', to: 'school_students#index'
  get '/schools/:id/students/new', to: 'school_students#new'
  post '/schools/:id/students', to: 'school_students#create'
  get '/students/:id/edit', to: 'students#edit'
  patch '/students/:id', to: 'students#update'
  delete '/students/:id', to: 'students#destroy'


  get '/garages', to: 'garages#index'
  get '/garages/new', to: 'garages#new'
  post '/garages', to: 'garages#create'
  get '/garages/:id/edit', to: 'garages#edit'
  get '/garages/:id', to: 'garages#show', as: "garages_show"
  patch '/garages/:id', to: 'garages#update'
  delete '/garages/:id', to: 'garages#destroy'
  

  get '/customers', to: 'customers#index'
  get '/customers/:id', to: 'customers#show', as: "customers_show"
  get '/customers/:id/edit', to: 'customers#edit'
  patch '/customers/:id', to: 'customers#update'
  delete '/customers/:id', to: 'customers#destroy'

  get '/garages/:id/customers', to: 'garage_customers#index', as: "garage_customers"
  get '/garages/:id/customers/new', to: 'garage_customers#new'
  post '/garages/:id/customers', to: 'garage_customers#create'
end
