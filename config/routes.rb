Rails.application.routes.draw do
  resources :countries
  # resources :destinations
  resources :streets
  # resources :countries
  resources :users
  root to: 'home#index'
  
  # RESTful Routes (generated by scaffold)

  # TODO: sessions routes (see /controllers/sessions_controller.rb)
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
  post '/login', to: 'sessions#create'

  # TODO: add/drop courses routes (see /controllers/registrations_controller.rb)

  get '/delete', to: 'users#destroy'
  delete '/delete', to: 'users#destroy'
  post "/users/:user_id/edit", to: 'users#edit'
  post "/add_street/:user_id/:street_id", to: 'destinations#add_street'

  # post '/courses/:course_id', to: 'courses#show'
  # post "/add_course/:user_id/:course_id", to: 'registrations#add_course'
  # delete "/drop_course/:user_id/:course_id", to: 'registrations#drop_course'
  #
  # get "/drop_course/:user_id/:course_id", to: 'registrations#drop_course'

get '/countries_get_regions', to: 'countries#get_regions' 
get '/countries_get_cities', to: 'countries#get_cities' 
end
