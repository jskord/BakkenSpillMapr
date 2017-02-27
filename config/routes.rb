Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :events
      resources :search
      get '/spills' => 'children#index'
      get '/users' => 'users#index'
    end
  end
  get '/' => 'pages#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/map' => 'pages#map'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
