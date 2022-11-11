Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :users

  resources :books, only: [:new, :show, :index]
  resources :users, only: [:show, :edit, :index]

end
