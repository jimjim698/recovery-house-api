require 'pry'

class Api::UsersController < Api::ApiController
  skip_before_action :verify_authenticity_token

  def create
    @user = User.create!(user_params)
    render json: @user
  end

  def login
    binding.pry
    @user = User.find_by(username: params[:username])

    return render json: @user if(@user.password == params[:password])

    render json: { status: 400 }
  end


private

def user_params
  params.require(:user).permit(:username, :password)
end

end
