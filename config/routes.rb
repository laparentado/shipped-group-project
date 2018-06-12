Rails.application.routes.draw do
  devise_for :users
  root "schedules#index"
  resources :boats
  resources :jobs
  resources :schedule

end
