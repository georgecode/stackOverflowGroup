class User < ActiveRecord::Base
  validates :email, uniqueness: true, presence: true
  validates :password_hash, presence: true
  has_many :questions
  has_many :answers

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end
end
