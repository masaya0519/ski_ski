class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters , if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:member, keys: [:name, :password, :password_confirmation])
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :password, :password_confirmation])
    # p '---------------'
    # p devise_parameter_sanitizer
    # p '---------------'
  end
end
