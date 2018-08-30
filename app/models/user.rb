class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :team, optional: true
  has_many :responses

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def super_user?
   role === "super_user"
  end

  def team_leader?
  	role === "team_leader"
  end
end
