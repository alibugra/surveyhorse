class Surveyor::SearchController < ApplicationController
  before_action :require_surveyor
  def index
    @surveys = Survey.all.order('id desc').search("-99999999999999")
    if params[:search]
      @surveys = Survey.all.where(status: "Public", is_published: "Yes").order('id desc').search(params[:search])
      if @surveys.count < 1
        flash[:notice] = "No_any_result"
      else
        flash[:notice] = "..."
      end
    end
  end
end
