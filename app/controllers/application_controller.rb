class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(_resource)
    case current_user.role
    when 'admin'
      admin_root_path
    else
      root_path
    end
  end

  def authenticate_admin!
    redirect_to root_path unless current_user && current_user.admin?
  end
end
