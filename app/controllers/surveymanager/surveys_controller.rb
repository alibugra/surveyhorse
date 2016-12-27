class Surveymanager::SurveysController < ApplicationController
  before_action :require_surveymanager
  def index
    if current_user.role == 3 then
      @surveys = Survey.all
    else
      @surveys = Survey.all.where(user_id: current_user.id)
    end
  end

  def new
  end

  def create
    @survey = Survey.new(title: params[:ttl], user_id: current_user.id,
                         status: "Open")
    if (params[:ttl] != "")
      if @survey.save
        @survey_id = Survey.all.where(user_id: current_user.id).last.id

        (1..params[:noq].to_i).each do |i|
          @survey_question = SurveyQuestion.new(question: params["q" + i.to_s], survey_id: @survey_id)
          @survey_question.save
          @survey_question_id = Survey.all.where(user_id: current_user.id).last.survey_questions.last.id
          (1..5).each do |j|
            @survey_answer = SurveyAnswer.new(answer: params["q" + i.to_s + "a" + j.to_s], survey_question_id: @survey_question_id)
            @survey_answer.save
          end
        end

        flash[:notice] = "success"
        redirect_to surveymanager_create_path
      else
        flash[:notice] = "fail"
        redirect_to surveymanager_create_path
      end
    else
      flash[:notice] = "fail"
      redirect_to surveymanager_create_path
    end
  end

  def edit
    begin
      @survey = Survey.find(params[:id])
    rescue
      redirect_to surveymanager_surveys_path
    end
  end

  def update
    @survey = Survey.find(params[:id])
    if params[:title] != ""
      @survey.title = params[:title]
      @survey.save
    else
    end
    if @survey.save
      redirect_to surveymanager_surveys_path
    else
      render 'edit'
    end
  end

  def show
    @surveys = SurveyResult.all.order('survey_id desc')
  end

  def show_results
  end

  def delete_survey
    begin
      @s = Survey.where(id: params[:survey_id]).first
      @s.destroy
    rescue
    end
    redirect_to surveymanager_surveys_path
  end
end
