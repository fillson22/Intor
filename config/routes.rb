Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :items
  resources :item_places
  resources :item_storages, only: [:index, :new, :create, :edit, :update]
  get "search", to: "items#search", as: :search
end
