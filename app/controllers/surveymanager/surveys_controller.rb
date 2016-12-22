class Surveymanager::SurveysController < ApplicationController
  before_action :require_surveymanager
  def index
    @surveys = Survey.all.where(user_id: current_user.id)
  end
end
