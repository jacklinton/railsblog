class HomeController < ApplicationController
  def index
    resources :users
    resources :posts
    resources :comments
  end
end
