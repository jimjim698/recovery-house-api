class Api::UsersController < Api::ApiController
  before_action :require_login, except: [:create]
  skip_before_action :verify_authenticity_token

  def create
    @user = User.create!(user_params)
    render json: {token: @user.auth_token}
  end

  def profile
    @user = User.find_by_auth_token!(request_headers[:token])
    render json: {user:{username: @user.username}}
  end

private

def user_params
  params.require(:user).permit(:username, :password)
end

end
