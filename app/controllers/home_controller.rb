class HomeController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
    @comments = Comment.all
  
    @user = User.find(current_user[:id])
  end
end
