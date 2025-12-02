Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :items, only: [:index, :new, :create]
  resources :item_places, only: [:index, :new, :create]
  resources :item_storages, only: [:index, :new, :create]
end
