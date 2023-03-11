class Public::ReviewsController < ApplicationController
  
  def new
     @review = Review.new
  end
  
  def create
     @cosmetic = Cosmetic.find(params[:id])
     @review = Review.new(review_params)
     @review.user_id = current_user.id
     @review.cosmetic_id = @cosmetic.id
     @review.save
     redirect_to cosmetic_path(cosmetic_id)
  end

  def show
    @review = Review.find(params[:id])
  end

  def index
  end

  def edit
     @review = Review.find(params[:id])
  end
  
  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to review_path(@review.id)
  end

  def destroy
  end
  
      private
  def review_params
    params.require(:review).permit(:user_id, :cosmetic_id, :review, :rate)
  end
  
end
