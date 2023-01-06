class Post < ApplicationRecord
  has_one_attached :main_image
  has_many_attached :additional_images
  validates :title, presence: true
end
