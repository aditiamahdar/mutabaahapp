class DashboardController < ApplicationController
  before_action :authenticated_user!
  def index; end

  def logout
    session.delete(:current_user_id)
    redirect_to root_url, notice: 'Logout berhasil'
  end
end
