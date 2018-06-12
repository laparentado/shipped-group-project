Rails.application.routes.draw do
  root "schedule#index"
  devise_for :users
  resources :boats
  resources :jobs
  resources :schedule

end
