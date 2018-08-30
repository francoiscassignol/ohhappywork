class Survey < ApplicationRecord
  belongs_to :team
  has_many :questions
  has_many :responses, through: :questions
  has_many :reviews

  def average_tool_rating
    ratings = questions.find_by(category: Category.where(name: "Tools & Processes")).responses.pluck(:rating)
    return ratings.sum.to_f / ratings.size
  end

  def global_rating
    [
      questions.find_by(category: Category.where(name: "Tools & Processes")).responses.average(:rating),
      questions.find_by(category: Category.where(name: "Personal growth")).responses.average(:rating),
      questions.find_by(category: Category.where(name: "Well being")).responses.average(:rating),
      questions.find_by(category: Category.where(name: "Collaboration")).responses.average(:rating),
      questions.find_by(category: Category.where(name: "Enterprise culture")).responses.average(:rating)
    ].sum.fdiv(5)
  end
end
