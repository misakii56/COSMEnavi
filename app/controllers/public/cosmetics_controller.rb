class Public::CosmeticsController < ApplicationController


  def index
    @cosmetics = Cosmetic.all
    @cosmetics = Cosmetic.all.page(params[:page]).per(10)
  end

  def show
     @cosmetic = Cosmetic.find(params[:id])
     @reviews = @cosmetic.reviews
  end

  def search
    if params[:keyword].present?
      @cosmetics = Cosmetic.where('name LIKE ?', "%#{params[:keyword]}%").
         or(Cosmetic.where("brand LIKE ?", "%#{params[:keyword]}%"))
      @keyword = params[:keyword]

      @user = current_user
      @parsonal_color = @user.parsonal_color
      @skin_type = @user.skin_type

      render 'public/reviews/index'
    else
      @cosmetics = Cosmetic.all
    end
  end

       private
  def review_params
    params.require(:review).permit(:user_id, :cosmetic_id, :review, :rate)
  end
end
