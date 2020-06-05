Rails.application.routes.draw do
  get 'pages/secret'
  root to: 'landing_page#index'
  resources :products do
    resources :reviews
  end
  get '/signup' => 'users#new', as: :new_user
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
