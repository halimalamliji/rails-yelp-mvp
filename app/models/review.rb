class Review < ApplicationRecord
  belongs_to :restaurant, required: true
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
end
