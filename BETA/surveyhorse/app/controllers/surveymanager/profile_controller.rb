class Surveymanager::ProfileController < ApplicationController
  before_action :require_surveymanager
  def index
  end

  def edit_profile
    if params[:password] == ""
      @user = User.where(id: current_user.id).first
      @user.email = params[:email]
      @user.save
      flash[:notice] = "Success_e"
    else
      if params[:password] == params[:password_confirmation]
        @user = User.where(id: current_user.id).first
        @user.password = params[:password]
        @user.email = params[:email]
        @user.save
        flash[:notice] = "Success_p"
      else
        @user = User.where(id: current_user.id).first
        @user.email = params[:email]
        @user.save
        flash[:notice] = "Success_e"
      end
    end
    redirect_to surveymanager_profile_path
  end
end
