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
  # OAuth
  namespace :api do
    namespace :v1 do
      get '/login', to: "auth#spotify_request"
      get '/auth', to: "auth#show"
    end
  end

  #Resources
  resources :users
  resources :songs
  resources :game_logs
end
