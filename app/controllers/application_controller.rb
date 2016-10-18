class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def authenticated_user!
    if session[:current_user_id].blank?
      redirect_to root_url, notice: 'Silahkan login terlebih dahulu'
      return
    end
  end

  def non_authenticated_user!
    if !session[:current_user_id].blank?
      redirect_to dashboard_url, notice: 'Anda sudah login'
      return
    end
  end

  def current_user
    @current_user ||= User.find(session[:current_user_id])
  end
end
