class Post < ApplicationRecord
  has_one_attached :main_image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
  has_many_attached :additional_images do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
  validates :title, presence: true
end
