Rails.application.routes.draw do
  devise_for :users
  root "schedule#index"
  resources :boats
  resources :jobs
  resources :schedule

end
