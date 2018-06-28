Rails.application.routes.draw do
  resources :systems
  root to: "public_pages#landing"
  resources :participations
  resources :events
  resources :games
  resources :event_types
  devise_for :users
end
