Rails.application.routes.draw do

  devise_for :users
  root "schedule#index"
  devise_for :users
  resources :boats 
  resources :jobs
  resources :schedule
  
end
