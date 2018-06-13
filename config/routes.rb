Rails.application.routes.draw do

  devise_for :users
  root "boats#index"
  resources :boats
  resources :jobs


end
