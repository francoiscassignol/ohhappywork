class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :team, optional: true
  has_many :responses

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
