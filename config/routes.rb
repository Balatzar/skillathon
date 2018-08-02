Rails.application.routes.draw do
  root to: "public_pages#landing"
  resources :dictionaries
  resources :handicaps
  resources :genres
  resources :systems
  resources :participations
  resources :events do
    collection do
      get :poll
    end
  end
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
