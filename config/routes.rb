Rails.application.routes.draw do
  get "/login", to:"sessions#new"
  post "/login", to:"sessions#create"
  delete "/logout", to:"sessions#destroy"
  
  get '/', to: "home#index"
 
  resources :comments
  resources :posts
  resources :users
  

  
end
