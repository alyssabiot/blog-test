class Post < ApplicationRecord
  has_one_attached :image
  # plural form => has_many_attached :images

  validates_presence_of :title, :body
  validates :title, length: {minimum: 5}
  validates :body, length: {minimum: 15}
end
