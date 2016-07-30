require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  validates :name,  presence: true, length: { maximum: 50 }

  has_secure_password
  validates :password, presence: true, length: { minimum: 3 }
end
