# frozen_string_literal: true

class RegistrationsController < ApplicationController

  def index; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # WelcomeMailer.with(user: @user).welcome_email.deliver_now
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Successfully created account'
    elsif User.present?
      flash.now[:alert] = 'That email is already taken, please use a different email.'
      render :new
    else
      p User.exists?(email: params[:email])
      flash.now[:alert] = 'Please fill out the form completely and try again.'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end
end
