class Api::V1::ReportsController < Api::V1::ApiController
  before_action :authenticate!

  api :GET, '/reports', 'Report yaumiyah bulanan'
  param_group :auth, Api::V1::ApiController
  param :user_id, String, desc: "User ID"
  param :month, Integer, desc: 'Januari: 1, Februari: 2, Maret: 3, dll', required: true
  param :year, Integer, desc: 'default value current year'
  description 'Report yaumiyah bulanan'
  formats ['json']
  example '
    [
      {
        "id": 6,
        "name": "Tahajud",
        "total": 3
      }
    ]
  '
  def index
    user_id = params[:user_id] || @current_user.id
    year = params[:year] || Date.today.year
    timestamp = YaumiyahReport.get_last_update(params[:month], year)
    reports = YaumiyahReport.monthly_report(user_id, params[:month], year)
    if stale?(last_modified: timestamp)
      render json: reports
    end
  end
end
