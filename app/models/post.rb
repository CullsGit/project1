class Post < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :subject, :optional => true
  has_many :comments
  has_many :likes
  def liked?(user)
    !!self.likes.find{|like| like.user_id == user.id}
  end
  
end
