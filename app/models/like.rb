class Like < ApplicationRecord
  belongs_to :user
  belongs_to :joke
  validates :user_id, uniqueness: {scope: :joke_id}
end
