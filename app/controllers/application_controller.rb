class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

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
end
