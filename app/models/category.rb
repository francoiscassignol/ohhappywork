class Category < ApplicationRecord
  has_many :questions
  has_many :responses, through: :questions

  #NAMES = ["Personal growth", "Well being", "Collaboration", "Tools & Processes", "Enterprise culture"]
end
