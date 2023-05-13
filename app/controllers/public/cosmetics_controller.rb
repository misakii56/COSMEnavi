class Public::CosmeticsController < ApplicationController


  def index
    @cosmetics = Cosmetic.all
    @cosmetics = Cosmetic.all.page(params[:page]).per(12)
  end

  def show
     @cosmetic = Cosmetic.find(params[:id])
     @reviews = @cosmetic.reviews
  end

  def search
    if params[:keyword].present?
      @cosmetics = Cosmetic.where('name LIKE ?', "%#{params[:keyword]}%").
         or(Cosmetic.where("brand LIKE ?", "%#{params[:keyword]}%")).
         or(Cosmetic.where("color LIKE ?", "%#{params[:keyword]}%"))
      @keyword = params[:keyword]
      @user = current_user
      @parsonal_color = @user.parsonal_color
      @skin_type = @user.skin_type
      render 'public/reviews/index'
    else
      @cosmetics = Cosmetic.all.page(params[:page]).per(12)
    end
  end


  def cezanne
      @cosmetics = Cosmetic.all.where(brand:"CEZANNE").page(params[:page]).per(12)
      @cezanne = Cosmetic.where(brand:"CEZANNE").page(params[:page]).per(12)
  end

  def canmake
      @cosmetics = Cosmetic.all.where(brand:"CANMAKE").page(params[:page]).per(12)
      @canmake = Cosmetic.where(brand:"CANMAKE").page(params[:page]).per(12)
  end

  def integrate
      @cosmetics = Cosmetic.all.where(brand:"INTEGRATE").page(params[:page]).per(12)
      @integrate = Cosmetic.where(brand:"INTEGRATE").page(params[:page]).per(12)
  end

  def eyebrow
      @cosmetics = Cosmetic.all.where('name LIKE ?', "%アイブロウ%").page(params[:page]).per(12)
      @eyebrow = Cosmetic.where('name LIKE ?', "%アイブロウ%").page(params[:page]).per(12)
  end

  def eyeliner
      @cosmetics = Cosmetic.all.where('name LIKE ?', "%ライナー%").page(params[:page]).per(12)
      @eyeliner = Cosmetic.where('name LIKE ?', "%ライナー%").page(params[:page]).per(12)
  end

  def mascara
      @cosmetics = Cosmetic.all.where('name LIKE ?', "%マスカラ%").page(params[:page]).per(12)
      @mascara = Cosmetic.where('name LIKE ?', "%マスカラ%").page(params[:page]).per(12)
  end
  def eyeshadow
      @cosmetics = Cosmetic.all.where('name LIKE ?', "%アイシャドウ%").page(params[:page]).per(12)
      @eyeshadow = Cosmetic.where('name LIKE ?', "%アイシャドウ%").page(params[:page]).per(12)
  end
  def lip
      @cosmetics = Cosmetic.all.where('name LIKE ?', "%リップ%").page(params[:page]).per(12)
      @lip = Cosmetic.where('name LIKE ?', "%リップ%").page(params[:page]).per(12)
  end
  def base
      @cosmetics = Cosmetic.all.where('name LIKE ?', "%下地%").page(params[:page]).per(12)
      @base = Cosmetic.where('name LIKE ?', "%下地%").page(params[:page]).per(12)
  end
  def cheek
      @cosmetics = Cosmetic.all.where('name LIKE ?', "%チーク%").page(params[:page]).per(12)
      @cheek = Cosmetic.where('name LIKE ?', "%チーク%").page(params[:page]).per(12)
  end
  def foundation
     @cosmetics = Cosmetic.all.where('name LIKE ?', "%ファンデーション%").page(params[:page]).per(12)
     @foundation = Cosmetic.where('name LIKE ?', "%ファンデーション%").page(params[:page]).per(12)
  end
  def powder
     @cosmetics = Cosmetic.all.where('name LIKE ?', "%パウダー%").page(params[:page]).per(12)
     @powder = Cosmetic.where('name LIKE ?', "%パウダー%").page(params[:page]).per(12)
  end
private
  def review_params
    params.require(:review).permit(:user_id, :cosmetic_id, :review, :rate)
  end
end
