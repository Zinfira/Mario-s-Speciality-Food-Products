class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, only_integer: true}
  validates_length_of :content_body, in: 50..250
end