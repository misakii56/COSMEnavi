class Admin::UsersController < ApplicationController
  def index
    @users = User.all
    @users = User.all.page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
    @skin_type = @user.skin_type
    @parsonal_color = @user.parsonal_color
  end

  def edit
     @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to admin_user_path(@user.id)
  end

     private
  def user_params
    params.require(:user).permit(:nickname, :parsonal_color_id, :skin_type_id, :introduction, :email, :is_deleted, :birth_date)
  end
end
