class UserController < ApplicationController
  before_action :authenticate_user!, only: [:profile]
  before_action :user_params, only: [:show, :profile, :following, :followers]
  def show
    # @user = current_user
    @posts = @user.posts
    # @posts = @user.posts.map do |post|
    #   post.content
    # end
  end

  def index
    @user = current_user
    @users = User.all
  end

  def profile
    @user = current_user
    @posts = @user.posts
  end

  def following
    @users = @user.following
  end
  
  def followers
    @users = @user.followers
  end
  
  

  private
    def user_params
      @user = User.friendly.find(params[:user_id].to_s.downcase)
    end

end
