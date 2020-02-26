Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "tops#index"
  resources :tops, only: [:index]
  resources :routesearches, only: [:index]
  resources :areaseaches, only: [:index]
  resources :searches, only: [:index, :show]
end
