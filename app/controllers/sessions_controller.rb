class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to home_path 
    else
      @user = User.new
    end
  end

  def create
    user = User.where(email: user_params[:email]).first
    if user and user.authenticate(user_params[:password])
      session[:user_id] = user.id
      redirect_to home_path, notice: "You are signed in, enjoy!"
    else
      flash[:error] = "Invalid email or password"
      redirect_to sign_in_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You are sign out!"
  end
  
  private

    def user_params
      params.require(:user).permit(:email, :password)
    end

end
