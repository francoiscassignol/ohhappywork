class Survey < ApplicationRecord
  belongs_to :team
  has_many :questions
  has_many :responses, through: :questions
  has_many :reviews

  def average_tool_rating
    ratings = questions.find_by(category: Category.where(name: "Tools & Processes")).responses.pluck(:rating)
    return ratings.sum.to_f / ratings.size
  end
end
