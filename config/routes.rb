Rails.application.routes.draw do
  devise_for :users
  root 'users#top'
  resources :users, only: [:new, :create, :index, :edit, :update]
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
