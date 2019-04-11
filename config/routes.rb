Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :songs
    end
  end
  namespace :api do
    namespace :v1 do
      resources :game_logs
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  #Resources
  resources :users, except: [:show]
  resources :songs, only: [:create]
  resources :game_logs, only: [:create]

  # Sessions
  root 'application#home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
