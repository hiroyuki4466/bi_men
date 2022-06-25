class Post < ApplicationRecord
  has_one_attached :ramen_image
  belongs_to :user
  
  validates :visited_date, presence: true
end
