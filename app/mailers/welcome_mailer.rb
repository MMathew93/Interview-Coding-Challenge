# frozen_string_literal: true

class WelcomeMailer < ApplicationMailer
  # send a welcome email when signing up
  def welcome_email
    @user = params[:user]
    @url = 'http://localhost:3000/sign_in'
    mail(to: @user.email, subject: 'Welcome to Note+')
  end
end
