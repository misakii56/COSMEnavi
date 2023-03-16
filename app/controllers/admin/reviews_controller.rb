class Admin::ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    @reviews = Review.all.page(params[:page]).per(10)
  end

  def show
    
  end

  def destroy
    review = Review.find(params[:id])  # データ（レコード）を1件取得
    review.destroy
    redirect_to admin_reviews_path
  end

       private
  def review_params
    params.require(:review).permit(:user_id, :cosmetic_id, :review, :rate)
  end
end
