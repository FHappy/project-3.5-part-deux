class PostController < ApplicationController
  before_action :post_params, only: [:show, :edit, :update, :delete]
  before_action :create_params, only: [:create]
  def show
    
  end

  def edit

  end
  
  def new

  end

  def update
    @post.update(
      title: params["title"],
      content: params["content"]
    )
    redirect_to "/posts/#{@post.id}"
  end

  def create
    newPost = Post.create(
      title: params["title"],
      content: params["content"],
      city_id: @city.id,
      user_id: current_user.id
    )
    redirect_to "/cities/#{@city.id}"
  end
  
  def delete
    @post.destroy
    redirect_to "/cities/#{@post.city_id}"
  end
  
  

  private
    def post_params
      @post = Post.find(params[:post_id])
    end

    def create_params
      @city = City.find(params[:city_id])
    end
    
    
end
