Rails.application.routes.draw do
  get '/' => 'pages#index'
  get 'signup' => 'pages#signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
