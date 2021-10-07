class PasswordResetsController

  def new

  end

  def edit
    #finds user with a valid token
    @user = User.find_signed!(params[:token], purpose: 'password_reset')
    rescue ActiveSupport::MessageVerifier::InvalidSignature
      redirect_to signin_path, alert: 'Your token has expired. Please try again.'
  end

  def update
    #updates user's password
    @user = User.find_signed!(params[:token]), purpose: 'password_reset'
    if @user.update(password_params)
      redirect_to signin_path, notice: 'Your password was reset successfuly'
    else
      render :edit
    end
  end

  private
    def password_params
      params.require(:user).permit(:password, :password_confirmation)
    end
end