class Public::CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
     review = Review.find(params[:review_id])
     comment = review.comments.create!(comment: params[:comment][:comment], user_id: current_user.id)
     redirect_to cosmetic_review_path(comment.review.cosmetic,  comment.review)
  end

  def edit
      @comment = Comment.find(params[:id])
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params)
    redirect_to cosmetic_review_path(comment.review.cosmetic, comment.review)
  end

  def destroy
    comment = current_user.comments.find(params[:id])  # データ（レコード）を1件取得
    comment.destroy
    redirect_to cosmetic_review_path(comment.review.cosmetic, comment.review)
  end

   private
  def comment_params
    params.require(:comment).permit(:user_id, :review_id, :comment)
  end
end
