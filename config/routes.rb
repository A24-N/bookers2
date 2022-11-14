Rails.application.routes.draw do

  devise_for :users

  root to: "homes#top"
  get "about" => "homes#about", as: 'about'



  resources :books, only: [:new, :show, :index, :create, :edit, :destroy, :update]
  resources :users, only: [:show, :edit, :index, :create, :update]

end
