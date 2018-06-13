Rails.application.routes.draw do

  devise_for :users
  resources :users
  root "jobs#home"
  resources :boats
  resources :jobs


end
