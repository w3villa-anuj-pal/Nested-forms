class CommentsController < ApplicationController
  def create
    @post = Post.friendly.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def destroy 
    @comment = Comment.find(params[:id])
    post = @comment.post
    @comment.destroy
    redirect_to post_path(post)
  end 

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end














