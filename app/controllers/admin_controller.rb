class AdminController < ApplicationController
  def index
       @users = User.all
       @posts = Post.all
       @comments = Comment.all
    end
end
