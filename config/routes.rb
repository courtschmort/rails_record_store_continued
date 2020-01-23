Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :albums do
    resources :songs
  end
get '/signup' => 'users#new'
post '/users' => 'users#create'
get '/users/:id' => 'users#show'

get '/signin' => 'sessions#new'
post '/signin' => 'sessions#create'
get '/signout' => 'sessions#destroy'
end
