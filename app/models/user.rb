class User < ActiveRecord::Base
  validates :email, uniqueness: true, presence: true
  validates :hashed_password, presence: true
  has_many :questions
  has_many :answers
  has_many :votes

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end
end
