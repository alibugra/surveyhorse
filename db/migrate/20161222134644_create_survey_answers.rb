class CreateSurveyAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_answers do |t|
      t.text :answer
      t.integer :survey_question_id

      t.timestamps
    end
  end
end
