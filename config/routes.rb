Rails.application.routes.draw do
  root "tops#index"
  resources :tops, only: [:index]
  resources :routesearches, only: [:index]
  resources :areaseaches, only: [:index]
  resources :searches, only: [:index, :show]
end
