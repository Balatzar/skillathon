Rails.application.routes.draw do
  resources :dictionaries
  resources :handicaps
  resources :genres
  root to: "public_pages#landing"
  resources :systems
  resources :participations
  resources :events
  resources :games
  resources :event_types
  devise_for :users
  resources :users do
    member do
      get :import_steam
      post :import_full_steam_library
    end
  end
end
