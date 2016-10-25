class YaumiyahController < ApplicationController
  before_action :authenticated_user!

  def index
    @yaumiyahs = Yaumiyah.pluck(:id, :name, :description)
  end

  def report
    YaumiyahReport.create(report_params)
    redirect_to yaumiyah_url, notice: "Amalan yaumiyah berhasil ditambahkan"
  end

  private
    def report_params
      params[:report].map do |report|
        {
          yaumiyah_id: report['yaumiyah_id'],
          amount: report['amount'],
          date: params[:date],
          user_id: current_user.id
        }
      end
    end
end
