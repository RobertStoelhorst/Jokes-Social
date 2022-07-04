class Joke < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :likes
  def liked?(user)
      !!self.likes.find{|like| like.user_id == user.id}
    end
end
