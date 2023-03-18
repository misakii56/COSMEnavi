class Public::CommentsController < ApplicationController

  def create
     review = Review.find(params[:review_id])
     comment = review.comments.create!(comment: params[:comment][:comment], user_id: current_user.id)
     redirect_to cosmetic_review_path(comment.review.cosmetic,  comment.review)
  end

  def edit
  end

  def destroy
  end

   private
  def comment_params
    params.require(:comment).permit(:user_id, :review_id, :comment)
  end
end
