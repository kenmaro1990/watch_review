class Review < ApplicationRecord

  belongs_to :user
  has_many :review_images
  accepts_nested_attributes_for :review_images
  has_one :brand
end
