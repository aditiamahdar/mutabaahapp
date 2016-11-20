# API List:
# Token - Done

# Profile Info - Done
# Update Profile - Done

# List Muwashafat - Done
# Update Muwashafat - Done

# List Yaumiyah
# Add/Edit Yaumiyah
# Batch Add Yaumiyah
# Laporan Yaumiyah perbulan

# My Group Info
# List Group Binaan
# Info Group Binaan

class Api::V1::ApiController < ActionController::API
  def_param_group :auth do
    param :token, String, desc: 'User token', required: true
  end

  protected
    def authenticate!
      authenticate_token || render_unauthorized
    end

    def authenticate_token
      @current_user = authenticate_with_http_token do |token, options|
        User.find_by(token: token)
      end
    end

    def render_unauthorized
      self.headers['WWW-Authenticate'] = 'Token realm="Application"'
      render json: 'Bad credentials', status: 401
    end

end
