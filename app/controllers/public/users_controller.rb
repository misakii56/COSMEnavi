class Public::UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
  end

  def confirm
  end

  def out
  end
end