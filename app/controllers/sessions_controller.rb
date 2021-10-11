# frozen_string_literal: true

class SessionsController < ApplicationController

  def home; end

  def index; end

  def show
    # gets all of the users notes
    @user = User.find(params[:id])
    @notes = @user.notes
    unless session[:user_id] == @user.id
      flash[:alert] = "You don't have access to that account!"
      redirect_to session_path(session[:user_id])
      return
    end
  end

  def create
    user = User.find_by(email: params[:email])
    # find the existing user, check to see if the user can be authenticated
    if user.present? && user.authenticate(params[:password])
      # set up a user.id session
      session[:user_id] = user.id
      redirect_to session_path(user.id), notice: 'Logged in successfully'
    else
      flash.now[:alert] = 'Invalid email or password'
      render :index
    end
  end

  def destroy
    # delete the user session and log out
    session[:user_id] = nil
    redirect_to root_path
  end

end
