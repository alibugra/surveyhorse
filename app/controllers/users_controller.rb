class UsersController < ApplicationController
  skip_before_action :authenticate_user
  def new
  end

  def create
    @u = User.where(username: params[:username]).count
    @e = User.where(email: params[:email]).count
    @user = User.new(username: params[:username].gsub(" ",""),
                     password: params[:password],
                     email: params[:email], role: params[:role])
    if (params[:username] != "" && params[:password] != "" && params[:password].length > 6 && @u != 1 && @e != 1)
      if @user.save
        sign_in(@user)
        redirect_to root_path
      else
        flash[:notice] = "fail"
        render 'new'
      end
    else
      flash[:notice] = "fail"
      redirect_to root_path
    end
  end
end
