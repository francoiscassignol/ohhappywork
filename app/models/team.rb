class Team < ApplicationRecord
  has_many :users
  has_many :surveys
  has_many :responses, through: :user
  has_many :questions, through: :surveys
end
