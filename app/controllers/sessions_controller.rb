class SessionsController < ApplicationController
  def home
  end

  def login
  end

  def create
    user = User.find_by(email: params[:email])
    # find the existing user, check to see if the user can be authenticated
    if user.present? && user.authenticate(params[:password])
      # set up a user.id session
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in successfully'
    else
      flash.now[:alert] = 'Invalid email or password'
      render :login
    end
  end

  def destroy
    # delete the user session and log out
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged Out'
  end
end
