class UserController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
    @posts = @user.posts
    # @posts = @user.posts.map do |post|
    #   post.content
    # end
  end

  def index
  end


end
