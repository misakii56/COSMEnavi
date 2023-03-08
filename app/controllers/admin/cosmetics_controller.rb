class Admin::CosmeticsController < ApplicationController
  def new
    @cosmetic = Cosmetic.new
  end
  
  def create
     @cosmetic = Cosmetic.new(cosmetic_params)
     @cosmetic.save
     redirect_to admin_cosmetics_path
  end

  def index
    @cosmetics = Cosmetic.all
    @cosmetics = Cosmetic.all.page(params[:page]).per(10)
  end

  def show
    @cosmetic = Cosmetic.find(params[:id])
  end

  def edit
  end
  
     private
  def cosmetic_params
    params.require(:cosmetic).permit(:name, :brand, :image)
  end
end
