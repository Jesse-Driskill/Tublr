

class Api::SessionsController < ApplicationController


  def create
    @user = User.find_by_credentials(
      # params[:user][:username],
      # params[:user][:password],
      user_params
    )
    debugger
    if @user
      login(@user)
      render "api/users/show"
    else
      render json: ["Invalid username/password combination"], status: 401
    end
  end

  def destroy
      @user = current_user
      debugger
      if @user
        logout
        render "api/users/show"
      else
        render json: ["Nobody signed in"], status: 404
      end
  end

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

end