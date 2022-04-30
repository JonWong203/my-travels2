class User < ApplicationRecord
  require 'bcrypt'
  include BCrypt
  has_many :destinations, dependent: :destroy
  has_many :streets, through: :destinations


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, uniqueness: true, presence: true
  validates :password_hash, presence: true



  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def users
    User.all
  end


end
