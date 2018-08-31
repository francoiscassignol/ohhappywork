class Response < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :question
  #has_one :category, through :question
end
