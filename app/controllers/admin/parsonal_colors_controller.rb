class Admin::ParsonalColorsController < ApplicationController
  
  def create
     parsonal_color = ParsonalColor.new(parsonal_color_params)
     parsonal_color.save
     redirect_to '/admin/parsonal_colors'
  end
  def edit
    @parsonal_color = ParsonalColor.find(params[:id])
  end

  def update
    @parsonal_color = ParsonalColor.find(params[:id])
    @parsonal_color.update(parsonal_color_params)
    redirect_to '/admin/parsonal_colors'
  end
  
  def index
     @parsonal_color = ParsonalColor.new
     @parsonal_colors = ParsonalColor.all
  end
  
    private
  def parsonal_color_params
    params.require(:parsonal_color).permit(:color_name)
  end
end
