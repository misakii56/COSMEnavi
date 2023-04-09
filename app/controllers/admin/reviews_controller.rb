class Admin::ReviewsController < ApplicationController
  before_action :redirect_root


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
  def redirect_root
    redirect_to root_path unless admin_signed_in?
  end
  
  def review_params
    params.require(:review).permit(:user_id, :cosmetic_id, :review, :rate)
  end
end
