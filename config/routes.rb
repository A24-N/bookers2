Rails.application.routes.draw do

  root to: "homes#top"
  get "about" => "homes#about"

  devise_for :users

  resources :books, only: [:new, :show, :index, :create, :edit, :destroy]
  resources :users, only: [:show, :edit, :index, :create]

end
