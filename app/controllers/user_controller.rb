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

  private
    def user_params
      @user = User.friendly.find(params[:user_id].to_s.downcase)
    end

end
