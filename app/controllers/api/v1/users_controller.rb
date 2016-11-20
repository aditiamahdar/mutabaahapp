class Api::V1::UsersController < Api::V1::ApiController
  before_action :authenticate!

  api :GET, '/users/:id', 'Detail user'
  error code: 404, desc: 'User tidak ditemukan!'
  param_group :auth
  param :id, String, desc: "User ID"
  description 'Detail user'
  formats ['json']
  example '
    {
      "id": 1,
      "name": "Aditia Mahdar",
      "username": "aditiamahdar",
      "email": "adit.mahdar@gmail.com",
      "phone": "081809127242",
      "token": "e6b75df5d7924faab46f4c927cd4fecc",
      "birthdate": Tue, 07 Sep 1993,
      "bio": "Ruby on Rails Optimizer Wizard",
      "url": "http://kodelasut.aditmpit.com",
      "level": "muayyid",
      "created_at": Tue, 18 Oct 2016 10:27:11 UTC +00:00,
      "updated_at": Tue, 18 Oct 2016 10:27:11 UTC +00:00,
      "status": 200
    }
  '
  def show
    user = User.find_by(id: params[:id])
    response = if user then user.api_response else not_found_user end
    render json: response.except(:status), status: response[:status]
  end

  api :PATCH, '/users/:id', 'Update data user'
  error code: 404, desc: 'User tidak ditemukan!'
  error code: 400, desc: 'Data tidak dapat diproses karena tidak lolos validasi'
  param_group :auth
  param :id, String, desc: "User ID"
  param :user, Hash do
    param :name, String
    param :username, String
    param :email, String
    param :phone, String
    param :birthdate, String, desc: 'contoh: "1993-09-07"'
    param :bio, String
    param :url, String
  end
  description 'Update data user'
  formats ['json']
  example '
    {
      "id": 1,
      "name": "Aditia Mahdar",
      "username": "aditiamahdar",
      "email": "adit.mahdar@gmail.com",
      "phone": "081809127242",
      "token": "e6b75df5d7924faab46f4c927cd4fecc",
      "birthdate": Tue, 07 Sep 1993,
      "bio": "Ruby on Rails Optimizer Wizard",
      "url": "http://kodelasut.aditmpit.com",
      "level": "muayyid",
      "created_at": Tue, 18 Oct 2016 10:27:11 UTC +00:00,
      "updated_at": Tue, 18 Oct 2016 10:27:11 UTC +00:00,
      "status": 200
    }
  '
  def update
    response = if @current_user.update(user_params) then @current_user.api_response else update_error_response end
    render json: response.except(:status), status: response[:status]
  end

  private
    def not_found_user
      {
        status: 404,
        error: true,
        message: "User dengan ID #{params[:id]} tidak ditemukan"
      }
    end

    def user_params
      params.require(:user).permit(:name, :username, :email, :phone, :birthdate, :bio, :url)
    end

    def update_error_response
      {
        status: 400,
        error: true,
        messages: @current_user.errors
      }
    end
end
