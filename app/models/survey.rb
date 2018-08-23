class Survey < ApplicationRecord
  belongs_to :team
  has_many :questions
  has_many :responses, through: :questions
end
