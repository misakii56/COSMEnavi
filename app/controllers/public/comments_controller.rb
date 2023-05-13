class Public::CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @review = Review.find(params[:review_id])
    @comments = Comment.where(review: @review)
    @comment = @review.comments.create(comment: params[:comment][:comment], user_id: current_user.id)
    if @comment.save
      redirect_to cosmetic_review_path(@comment.review.cosmetic, @comment.review)
    else
      render template: "public/reviews/show"
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    unless user_signed_in? && (current_user == @comment.user)
      redirect_to root_path
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to cosmetic_review_path(@comment.review.cosmetic, @comment.review)
    else
      render template: "public/comments/edit"
    end
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
