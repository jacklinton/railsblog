Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users
  get '/', to: "home#index"

  
end
