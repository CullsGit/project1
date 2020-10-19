class Post < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :subject, :optional => true
  has_many :comments
end
