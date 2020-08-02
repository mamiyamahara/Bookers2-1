Rails.application.routes.draw do

  root 'home#index'
  get 'home/about'
  devise_for :users
  resources :users, only: [:show, :create, :index, :edit, :update]
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
