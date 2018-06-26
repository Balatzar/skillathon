Rails.application.routes.draw do
  root to: "public_pages#landing"
  resources :participations
  resources :events
  resources :games
  resources :event_types
  devise_for :users
end
