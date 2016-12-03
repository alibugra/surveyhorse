class UsersController < ApplicationController
  skip_before_action :authenticate_user
  def new
  end

  def create
    @user = User.new(username: params[:username],
                     password: params[:password],
                     email: params[:email], role: params[:role])
    if @user.save
      sign_in(@user)
      redirect_to root_path
    else
      render 'New'
    end
  end
end
