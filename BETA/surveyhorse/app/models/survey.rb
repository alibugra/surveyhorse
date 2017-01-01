class Survey < ApplicationRecord
  has_many :survey_questions
  belongs_to :user

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end
