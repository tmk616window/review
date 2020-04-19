Rails.application.routes.draw do
  root to: 'fronts#index'
  get '/explain/:id' , to:'posts#explain'
  resources :'follows'
  resources :'details'
  resources :'likes'
  resources :'users',only:[:edit,:update]
  resources :'messages'
  resources :'posts'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :'tasks'
end
