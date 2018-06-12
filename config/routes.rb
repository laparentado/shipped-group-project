Rails.application.routes.draw do
  get 'schedules/index'
  get 'schedules/new'
  get 'schedules/show'
  get 'schedules/edit'
  devise_for :users
  root "schedule#index"
  resources :boats
  resources :jobs
  resources :schedule

end
