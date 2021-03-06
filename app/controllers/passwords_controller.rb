# frozen_string_literal: true

class PasswordsController < ApplicationController
  # allows only logged in users
  before_action :require_user_logged_in!

  def edit; end

  def update
    # update the user password
    if Current.user.update(password_params)
      redirect_to session_path(Current.user.id), notice: 'Password Updated'
    else
      render :edit
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
