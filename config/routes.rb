Rails.application.routes.draw do
  
  get '/' => 'pages#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/map' => 'pages#map'

  
  get '/json/all' => 'maps#json_index'
  get '/json/sort_by_date' => 'maps#json_sort_by_date'
  get '/json/show' => 'maps#json_show'

  get '/spills/:id' => 'spills#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
