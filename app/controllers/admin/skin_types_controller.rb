class Admin::SkinTypesController < ApplicationController
  before_action :redirect_root

  def create
     skin_type = SkinType.new(skin_type_params)
     skin_type.save
     redirect_to '/admin/skin_types'
  end
  def edit
      @skin_type = SkinType.find(params[:id])
  end
  def update
    @skin_type = SkinType.find(params[:id])
    @skin_type.update(skin_type_params)
    redirect_to '/admin/skin_types'
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