class UserController < ApplicationController
  before_action :authenticate_user!, only: [:profile, :edit, :feed]
  before_action :user_params, only: [:show, :following, :followers]
  def show
    @posts = @user.posts.paginate(:page => params[:page], per_page: 10)
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
    @map_users = @users.reject {|user| !user.current_city}
    @hash = Gmaps4rails.build_markers(@map_users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow "#{user.first_name} #{user.last_name} \n #{user.username}"
    end
  end

  def profile
    @user = current_user
    @posts = @user.posts.paginate(:page => params[:page], per_page: 10)
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
