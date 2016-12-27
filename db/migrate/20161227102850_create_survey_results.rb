class CreateSurveyResults < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_results do |t|
      t.integer :user_id
      t.integer :survey_id
      t.integer :survey_question_id
      t.integer :survey_answer_id

      t.timestamps
    end
  end
end
