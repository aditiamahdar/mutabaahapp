class Api::V1::MuwashafatController < Api::V1::ApiController
  before_action :authenticate!

  api :GET, '/muwashafat', 'List muwashafat'
  param_group :auth, Api::V1::ApiController
  param :user_id, String, desc: "User ID"
  description 'List muwashafat'
  formats ['json']
  example '
    [
      {
        "id": 235,
        "name": "Tidak berhubungan dengan jin",
        "description": null,
        "level": "tamhidi",
        "category": "salimul_aqidah",
        "status": null,
        "note": null
      },
      {
        "id": 236,
        "name": "Tidak meminta tolong kepada orang yang berlindung kepada jin",
        "description": null,
        "level": "tamhidi",
        "category": "salimul_aqidah",
        "status": null,
        "note": null
      }
    ]
  '
  def index
    muwashafats = Muwashafat.get_status(params[:user_id] || @current_user.id)
    # muwashafats adalah relation dan tidak bisa menggunakan api response
    if stale?(last_modified: @current_user.updated_at)
      render json: muwashafats
    end
  end

  api :PATCH, '/muwashafat/:id', 'Update muwashafat status'
  param_group :auth, Api::V1::ApiController
  param :id, String, desc: 'Muwashafat ID', required: true
  param :status, [true, false], desc: "Status muwashafat 'true' => Tuntas, 'false' => Belum Tuntas", required: true
  description 'Update muwashafat status'
  formats ['json']
  example '
    {
      "id": 235,
      "name": "Tidak berhubungan dengan jin",
      "description": null,
      "level": "tamhidi",
      "category": "salimul_aqidah",
      "status": true,
      "note": null
    }
  '
  def update
    muwashafat_user = @current_user.muwashafat_users.find_or_create_by(muwashafat_id: params[:id])
    @current_user.touch if muwashafat_user.update_attribute(:status, params[:status])
    render json: muwashafat_user.api_response
  end
end
