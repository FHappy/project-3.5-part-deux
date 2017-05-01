class UserController < ApplicationController
  before_action :authenticate_user!, only: [:profile, :edit, :feed]
  before_action :user_params, only: [:show, :following, :followers]
  def show
    @posts = @user.posts
  end

  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update(user_update_params)
      redirect_to user_profile_path
    else
      render :edit
    end
  end
  
  def index
    @user = current_user
    @users = User.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
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

    def user_update_params
      params.require(:user)
            .permit(:first_name, :last_name, :bio, :img_url, :current_city)
    end
    

end
