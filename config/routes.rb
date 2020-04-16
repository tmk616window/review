Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/show'
  resources :'follows'
  resources :'details'
  root 'tasks#index'
  resources :'likes'
  resources :'users',only:[:edit,:update]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :'tasks'
end
