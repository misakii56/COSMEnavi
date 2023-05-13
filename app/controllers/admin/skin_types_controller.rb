class Admin::SkinTypesController < ApplicationController
  before_action :redirect_root

  def create
    @skin_type = SkinType.new(skin_type_params)
    if @skin_type.save
      redirect_to '/admin/skin_types'
    else
      @skin_types = SkinType.all
      render template: "admin/skin_types/index"
    end
  end
  def edit
      @skin_type = SkinType.find(params[:id])
  end
  def update
    @skin_type = SkinType.find(params[:id])
    if @skin_type.update(skin_type_params)
      redirect_to '/admin/skin_types'
    else
      render template: "admin/skin_types/edit"
    end
  end

  def index
    @skin_type = SkinType.new
    @skin_types = SkinType.all
  end
end

private
  def redirect_root
    redirect_to root_path unless admin_signed_in?
  end
  def skin_type_params
    params.require(:skin_type).permit(:type_name)
  end