Rails.application.routes.draw do
root to: "home#top"
devise_for :users

resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
resources :users, only: [:create, :index, :show, :edit, :update]

get 'home/about' => 'home#about', as: 'about'

end
