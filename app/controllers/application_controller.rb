class ApplicationController < ActionController::Base
  before_action :set_seach
  before_action :configure_permitted_parameters , if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_path(current_member)
  end

  def after_sign_out_path_for(resource)
    root_path
  end
  
  def set_seach
    @q = Ski.ransack(params[:q])
  end

  private
  # protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :password, :password_confirmation])
    # p '---------------'
    # p devise_parameter_sanitizer
    # p '---------------'
  end
end
