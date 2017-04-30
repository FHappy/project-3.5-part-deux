class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :comment_params
  before_action :comment_delete_params, only: [:delete]

  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(comment_create_params)
    if @comment.save
      redirect_to post_show_path(@post)
    else
      render :new
    end
    
  end
  
  def delete
    @comment.destroy
    redirect_to post_show_path(@post)
  end
  
  private
    def comment_params
      @post = Post.find(params[:post_id])
    end

    def comment_create_params
      params.require(:comment)
            .permit(:content)
            .merge(user_id: current_user.id, post_id: @post.id)
    end

    def comment_delete_params
      @comment = Comment.find(params[:comment_id])
    end
    
    

    
end
