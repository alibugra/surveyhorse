class Sysadmin::UsersController < ApplicationController
  before_action :require_sysadmin
  def index
    @users = User.all.where("role <> ?", 3)
  end

  def new
      @user = User.new
  end

  def edit
    begin
      @user = User.find(params[:id])
    rescue
      redirect_to sysadmin_users_path
    end
  end

  def update
    @user = User.find(params[:id])
    if params[:password] == ""
      @user.email = params[:email]
      @user.save
    else
      if params[:password] == params[:password_confirmation]
        @user.password = params[:password]
        @user.email = params[:email]
      else
        @user.email = params[:email]
      end
    end
    if @user.save
      redirect_to sysadmin_users_path
    else
      render 'edit'
    end
  end

  def show
  end

  def delete_user
    begin
      @u = User.where(id: params[:user_id]).first
      @u.destroy
    rescue
    end
    redirect_to sysadmin_users_path
  end
end
