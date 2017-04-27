class PostController < ApplicationController
  before_action :post_params, only: [:show, :edit, :update]
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
  

  private
    def post_params
      @post = Post.find(params[:post_id])
    end
    
end
