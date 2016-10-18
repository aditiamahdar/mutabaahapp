class MuwashafatController < ApplicationController
  before_action :authenticated_user!

  def index
    @muwashafats = Muwashafat.get_status(session['current_user_id'])
  end

  def update
    muwashafat_user = current_user.muwashafat_users.find_or_create_by(muwashafat_id: params[:id])
    muwashafat_user.update_attribute(:status, params[:status])
    redirect_to :back, notice: 'Muwashafat berhasil di update'
  end
end
