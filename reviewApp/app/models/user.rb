class User < ApplicationRecord

  has_secure_password
  validates_uniqueness_of :email
  has_many :reviews
  has_many :profiles
end
