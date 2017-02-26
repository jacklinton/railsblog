Rails.application.routes.draw do
  get '/', to: "home#index"
 
  resources :comments
  resources :posts
  resources :users
  

  
end
