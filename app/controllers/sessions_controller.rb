class SessionsController < ApplicationController
  def new
  end

  def create
    #returns boolean, sends to user class .self
    user = User.authenticate(user_params)

    if user 
      session[:user_id] = user.id
      flash[:success] = "user logged in"
      redirect_to root_path
    else
      flash[:danger] = "credentials invalid"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "user logged out"
    redirect_to root_path
  end

  ######### create private params
  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
