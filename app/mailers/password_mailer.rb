# frozen_string_literal: true

class PasswordMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
  def reset
    # assign a token with a purpose and expiry time
    @token = params[:user].signed_id(purpose: 'password_reset', expires_in: 15.minutes)
    # sends the email
    mail to: params[:user].email
  end
end
