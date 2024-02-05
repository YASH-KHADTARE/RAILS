class UsersController < ApplicationController
  skip_before_action :authorized, only:[:create]

  def create 
    @user = User.new(create_params)
    if @user.save
      @token = encode_token(user_id: @user.id)
      render json:  { user: @user, token: @token}
    else
      render json: @user.errors.full_messages , status: 422
    end 
      
  end

  private

  def create_params
    params.require(:user).permit(:username ,:bio , :password)
  end

end
