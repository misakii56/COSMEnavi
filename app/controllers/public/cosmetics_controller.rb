class Public::CosmeticsController < ApplicationController
  def create
     @cosmetic = Cosmetic.find(params[:id])
     @review = Review.new(review_params)
     @review.user_id = current_user.id
     @review.cosmetic_id = @cosmetic.id
     @review.save
     redirect_to cosmetic_path(cosmetic_id)
  end
  
  def index
    @cosmetics = Cosmetic.all
    @cosmetics = Cosmetic.all.page(params[:page]).per(10)
  end

  def show
     @cosmetic = Cosmetic.find(params[:id])
  end
  
       private
  def review_params
    params.require(:review).permit(:user_id, :cosmetic_id, :review, :rate)
  end
end
