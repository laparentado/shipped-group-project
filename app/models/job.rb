class Job < ApplicationRecord
  belongs_to :boat
  belongs_to :user
  validates :description, length: { maximum: 20 }
  validates :cost, numericality: { less_than_or_equal_to: 100,  only_integer: true }
end
