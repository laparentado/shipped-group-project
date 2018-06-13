Rails.application.routes.draw do

  devise_for :users
  root "jobs#home"
  resources :boats
  resources :jobs


end
