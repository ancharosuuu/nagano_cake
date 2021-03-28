class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :current_cart
  
  

  def current_cart_items
    if session[:id]
      @cart_item = CartItem.find(session[:id])
    else
      @cart_item = CartItem.create
      session[:id] = @cart_item.id
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :potal_code, :address, :telephone_number, :encrypted_password])
  end
end
