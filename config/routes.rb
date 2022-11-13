Rails.application.routes.draw do

  root to: "homes#top"
  get "about" => "homes#about", as: 'about'

  devise_for :users

  resources :books, only: [:new, :show, :index, :create, :edit, :destroy, :update]
  resources :users, only: [:show, :edit, :index, :create, :update]

end
