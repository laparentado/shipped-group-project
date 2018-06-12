Rails.application.routes.draw do
  get 'boats/index'
  get 'boats/new'
  get 'boats/show'
  get 'boats/edit'
  devise_for :users
  root "schedule#index"
end
