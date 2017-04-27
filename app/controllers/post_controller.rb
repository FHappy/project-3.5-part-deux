class PostController < ApplicationController
  before_action :post_params, only: [:show]
  def show

  end

  def new

  end

  private
    def post_params
      @post = Post.find(params[:id])
    end
    
end
