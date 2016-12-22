class SurveyQuestion < ApplicationRecord
  has_many :survey_answers
  belongs_to :survey
end
