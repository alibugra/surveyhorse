class SessionsController < ApplicationController
  skip_before_action :authenticate_user

  def create
    @user = User.find_by(username: params[:username], password: params[:password])
    if @user != nil
      sign_in(@user)
      redirect_to root_path
    else
      flash.now[:alert] = "Kullanıcı adınızı ve şifrenizi kontrol ediniz."
      redirect_to root_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
