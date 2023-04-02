Rails.application.routes.draw do
  get 'books/show'
  get 'books/index'
  get 'books/edit'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'homes/about'

  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:index, :show, :edit]
end
