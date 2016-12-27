class Anonymous::SurveysController < ApplicationController
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
    @questions = Survey.where(id: params[:survey_id]).first.survey_questions
    @questions.each do |q|
      @survey_result = SurveyResult.new(user_id: -1, survey_id: params[:survey_id],
                                        survey_question_id: q.id, survey_answer_id: params["answer" + q.id.to_s])
      @survey_result.save
    end
    redirect_to root_path
  end
end
