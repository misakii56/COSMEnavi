class Admin::ParsonalColorsController < ApplicationController
  before_action :redirect_root

  def create
    @parsonal_color = ParsonalColor.new(parsonal_color_params)
    if @parsonal_color.save
      redirect_to '/admin/parsonal_colors'
    else
      @parsonal_colors = ParsonalColor.all
      render template: "admin/parsonal_colors/index"
    end
  end
  def edit
    @parsonal_color = ParsonalColor.find(params[:id])
  end

  def update
    @parsonal_color = ParsonalColor.find(params[:id])
    if @parsonal_color.update(parsonal_color_params)
      redirect_to '/admin/parsonal_colors'
    else
      render template: "admin/parsonal_colors/edit"
    end
  end

  def index
     @parsonal_color = ParsonalColor.new
     @parsonal_colors = ParsonalColor.all
  end

private
  def redirect_root
    redirect_to root_path unless admin_signed_in?
  end

  def parsonal_color_params
    params.require(:parsonal_color).permit(:color_name)
  end
end
