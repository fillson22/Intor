Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :items
  resources :item_places
  resources :item_storages, only: [:index, :new, :create, :edit, :update]
end
