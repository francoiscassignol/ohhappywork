class Response < ApplicationRecord
  belongs_to :user
  belongs_to :question
  #has_one :category, through :question
end
