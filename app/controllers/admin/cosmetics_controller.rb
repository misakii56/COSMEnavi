class Admin::CosmeticsController < ApplicationController
  before_action :redirect_root

  def new
    @cosmetic = Cosmetic.new
  end

  def create
    @cosmetic = Cosmetic.new(cosmetic_params)
    if @cosmetic.save
      redirect_to admin_cosmetics_path
    else
      render template: "admin/cosmetics/new"
    end
  end

  def index
    @cosmetics = Cosmetic.all
    @cosmetics = Cosmetic.all.page(params[:page]).per(10)
  end

  def show
    @cosmetic = Cosmetic.find(params[:id])
  end

  def edit
    @cosmetic = Cosmetic.find(params[:id])
  end

  def update
    @cosmetic = Cosmetic.find(params[:id])
    if @cosmetic.update(cosmetic_params)
      redirect_to admin_cosmetic_path(@cosmetic.id)
    else
      render template: "admin/cosmetics/edit"
    end
  end

private
  def redirect_root
    redirect_to root_path unless admin_signed_in?
  end

  def cosmetic_params
    params.require(:cosmetic).permit(:name, :brand, :image, :color, :source)
  end
end
