class Like < ApplicationRecord
  belongs_to :user_id
  belongs_to :joke_id
end
