class Survey < ApplicationRecord
  belongs_to :team
  has_many :questions
  has_many :responses, through: :questions
  has_many :reviews
end
