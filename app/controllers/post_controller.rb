class PostController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :delete]
  before_action :post_params, only: [:show, :edit, :update, :delete]
  before_action :create_params, only: [:create, :new]
  def show

  end

  def edit

  end

  def new
    @post = Post.new
  end

  def update
    if @post.update(post_create_params)
      redirect_to "/posts/#{@post.id}"
    else
      render :edit
    end
  end

  def create
    @post = Post.new(post_create_params)
    if @post.save
      redirect_to city_show_path(@city.id)
    else
      render :new
    end

  end

  def delete
    @post.destroy
    redirect_to "/cities/#{@post.city_id}"
  end

  def post_create_params
    params.require(:post)
      .permit(:title, :content)
      .merge(user_id: current_user.id, city_id: params[:city_id])
  end


  private
    def post_params
      @post = Post.find(params[:post_id])
    end

    def create_params
      @city = City.find(params[:city_id])
    end


end
