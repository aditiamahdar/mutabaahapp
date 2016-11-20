class Api::V1::TokenController < Api::V1::ApiController
  before_action :authenticate!, only: :destroy

  api :POST, '/token', 'Login untuk mendapatkan token user'
  error code: 404, desc: 'Username dan password salah!'
  param :username, String, desc: 'Username', required: true
  param :password, String, desc: 'Password', required: true
  description 'Login untuk mendapatkan token user'
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
  def create
    user = User.login_api!(login_params)
    response = if user then user.api_response else login_error_response end
    render json: response.except(:status), status: response[:status]
  end

  api :DELETE, '/token/:id', 'Logout'
  param :id, String, desc: 'User ID', required: true
  param_group :auth
  description 'Logout'
  formats ['json']
  example '
    {
      "success" => true,
      "message" => "Anda berhasil logout!"
    }
  '
  def destroy
    @current_user.logout_api!
    render json: logout_response
  end

  private
    def login_params
      {
        username: params[:username],
        password: params[:password]
      }
    end

    def login_error_response
      {
        status: 404,
        error: true,
        message: 'Username dan password salah!'
      }
    end

    def logout_response
      {
        success: true,
        message: 'Anda berhasil logout!'
      }
    end
end
