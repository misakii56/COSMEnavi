class Public::CosmeticsController < ApplicationController
  def index
    @cosmetics = Cosmetic.all
    @cosmetics = Cosmetic.all.page(params[:page]).per(10)
  end

  def show
  end
end