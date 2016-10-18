class HomeController < ApplicationController
  before_action :non_authenticated_user!

  def index; end

  def login
    user = User.find_by(username: params[:username])
    if user.try(:valid_password?, params[:password])
      session[:current_user_id] = user.id
      redirect_to dashboard_url, notice: 'Login berhasil'
    else
      redirect_to root_url, alert: 'Login gagal'
    end
  end
end
