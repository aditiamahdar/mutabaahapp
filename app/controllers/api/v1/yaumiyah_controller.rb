class Api::V1::YaumiyahController < Api::V1::ApiController
  before_action :authenticate!

  api :GET, '/yaumiyah', 'List yaumiyah'
  param_group :auth, Api::V1::ApiController
  description 'List yaumiyah'
  formats ['json']
  example '
    [
      {
        "id": 6,
        "name": "Tahajud",
        "description": "Isi dengan 1 jika iya, dan 0 jika tidak",
        "updated_at": "2016-11-20T21:07:17.187Z"
      }
    ]
  '
  def index
    yaumiyah = Yaumiyah.select(:id, :name, :description, :updated_at).order(id: :asc)
    if stale?(last_modified: yaumiyah.sort {|a, b| b.updated_at <=> a.updated_at}.first.updated_at)
      render json: yaumiyah
    end
  end

  api :POST, '/yaumiyah', 'Menambah laporan yaumiyah per hari'
  param_group :auth, Api::V1::ApiController
  param :yaumiyah, Hash do
    param :date, String, desc: 'contoh "2016-11-21"'
    param '[id][]', String, desc: 'ID of Yaumiyah'
    param '[amount][]', String, desc: 'Value of Yaumiyah'
  end
  description 'Menambah laporan yaumiyah per hari'
  formats ['json']
  example '
    {
      "success": true
    }
  '
  def create
    connection = ActiveRecord::Base.connection
    Upsert.batch(connection, :yaumiyah_reports) do |upsert|
      params[:id].each_with_index do |id, index|
        upsert.row({user_id: @current_user.id, date: params[:date], yaumiyah_id: id}, amount: params[:amount][index])
      end
    end
    render json: {success: true}
  end

  private
    def initial_yaumiyah(data)
      {
        data: data,
        page: params[:page],
        limit: params[:limit],
        total_page: 0
      }
    end
end
