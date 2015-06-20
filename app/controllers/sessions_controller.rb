class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.where(email: user_params[:email]).first
    if @user and @user.authenticate(user_params[:password])
      redirect_to home_path
    else
      redirect_to sign_in_path, notice: "Email or password may be wrong!"
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password)
    end

end
