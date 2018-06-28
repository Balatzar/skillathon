Rails.application.routes.draw do
  root to: "public_pages#landing"
  resources :systems
  resources :participations
  resources :events
  resources :games
  resources :event_types
  resources :users
  devise_for :users
end
