class Surveyor::SurveysController < ApplicationController
  before_action :require_surveyor
  def index
  end

  def fill
    begin
      @survey = Survey.find(params[:id])
    rescue
      redirect_to root_path
    end
  end

  def fill_complete
    @temp = 0
    @questions = Survey.where(id: params[:survey_id]).first.survey_questions
    @questions.each do |q|
      @survey_result = SurveyResult.new(user_id: current_user.id, survey_id: params[:survey_id],
                                        survey_question_id: q.id, survey_answer_id: params["answer" + q.id.to_s])
      if params["answer" + q.id.to_s].blank?
        @temp = 1
      end
    end

    if @temp != 1
      @questions.each do |q|
        @survey_result = SurveyResult.new(user_id: current_user.id, survey_id: params[:survey_id],
                                          survey_question_id: q.id, survey_answer_id: params["answer" + q.id.to_s])
        @survey_result.save
      end
      flash[:notice] = "success"
    else
      flash[:notice] = "error"
    end

    redirect_to :back
  end
end
