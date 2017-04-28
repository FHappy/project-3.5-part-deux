class PostController < ApplicationController
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
    @post.update(
      title: params["title"],
      content: params["content"]
    )
    redirect_to "/posts/#{@post.id}"
  end

  def create
    @post = Post.new(
      title: params["post"]["title"],
      content: params["post"]["content"],
      city_id: @city.id,
      user_id: current_user.id
    )

    if @post.save
      redirect_to "/cities/#{@city.id}"
    else
      render :new
    end
    
  end
  
  def delete
    @post.destroy
    redirect_to "/cities/#{@post.city_id}"
  end
  
  # def create_post_params
  #   params.require(:post).permit(:title, :content)
  # end
    

  private
    def post_params
      @post = Post.find(params[:post_id])
    end

    def create_params
      @city = City.find(params[:city_id])
    end
    
    
end
