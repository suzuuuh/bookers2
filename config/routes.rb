Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'home/about'=>'homes#about'

  resources :users, only: [:index, :show, :edit, :create, :update, :destroy]
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]
end
