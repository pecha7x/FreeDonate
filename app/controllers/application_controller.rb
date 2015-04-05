class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :authenticate

  def index
    if current_user
      redirect_to product_items_path
    else
      redirect_to new_user_registration_path
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :username) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :current_password, :password, :password_confirmation, :username) }
  end

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      (username == "artemon" && password == "pecherin")
    end if Rails.env.production?
  end

  protect_from_forgery with: :exception
end
