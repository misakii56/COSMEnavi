class Public::ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
     @cosmetic = Cosmetic.find(params[:cosmetic_id])
     @review = Review.new
  end

  def create
     @cosmetic = Cosmetic.find(params[:cosmetic_id])
     @review = Review.new(review_params)
     @review.user_id = current_user.id
     @review.cosmetic_id = @cosmetic.id
  if @review.save
     redirect_to cosmetic_path(@cosmetic.id)
  else
    @reviews = @cosmetic.reviews
    render template: "public/reviews/new"
  end
  end

  def show
    @review = Review.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(review: @review)
  end

  def index
  end

  def edit
     @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to cosmetic_review_path(@review.id)
    else
      render template: "public/reviews/edit"
    end
  end

  def destroy
    review = current_user.reviews.find(params[:id])  # データ（レコード）を1件取得
    review.destroy
    redirect_to cosmetic_path(review.cosmetic.id)
  end

      private
  def review_params
    params.require(:review).permit(:user_id, :cosmetic_id, :review, :rate)
  end

end
