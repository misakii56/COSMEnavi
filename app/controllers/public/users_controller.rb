class Public::UsersController < ApplicationController
  def show
    @user = current_user
    @parsonal_color = @user.parsonal_color
    @skin_type = @user.skin_type
  end

  def edit
     @user = current_user
  end

  def update
     @user = current_user
     @user.update(user_params)
     redirect_to my_page_path

  end

  def confirm
  end

  def out
  end

       private
  def user_params
    params.require(:user).permit(:nickname, :parsonal_color_id, :skin_type_id, :introduction, :email)
  end
end
