class CommentsController < ApplicationController

  #Why is a comment not being associated with a user?
  def create
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end

  #Need a Comment to accept nested attributes for a user
  #Then, when a comment is created, it has to find or create the user
  #that will be associated with that comment
end
