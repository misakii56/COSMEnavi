class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :birth_date, :skin_type, :parsonal_color, :introduction])
    # アカウント編集の時にnameとprofileのストロングパラメータを追加

  end
end
