class LoginController < ApplicationController
  
  def login
    @user = User.find_by(username: login_params[:username])
    if @user.authenticate(login_params[:password])
      @token = encode_token(user_id: @user.id)
      render json: {
            user: @user,
            token: @token
        }, status: :accepted
    else
      render json: {message: 'Incorrect password'}, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:username , :password)
  end

end
