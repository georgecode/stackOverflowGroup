class User < ActiveRecord::Base
  validates :email, uniqueness: true, presence: true
  has_many :questions
  has_many :answers
end
