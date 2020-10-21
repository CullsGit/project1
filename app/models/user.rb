class User < ApplicationRecord
  has_secure_password
  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  has_many :posts
  has_many :comments
  has_many :subjects, :through => :posts
end
