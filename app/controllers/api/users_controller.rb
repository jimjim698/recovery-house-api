require 'pry'

class Api::UsersController < Api::ApiController
  skip_before_action :verify_authenticity_token

  def create
    @user = User.create!(user_params)
    render json: @user
  end

  def login

    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
    render json: @user
    end
  end


private

def user_params
  params.require(:user).permit(:username, :password)
end

end
