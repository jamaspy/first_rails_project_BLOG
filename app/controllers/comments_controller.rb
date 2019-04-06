class CommentsController < ApplicationController

  def created_at
      @post= Post.find(params [:post_id])
      @comment = @post.comments.create(params[:comment].permit(:name, :comment))
      redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:post_id])
    @comment.destroy
    redirect_to post_path(@post)
  end



end
