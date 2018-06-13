class Job < ApplicationRecord
  belongs_to :boat
  belongs_to :user
  validates :description, length: { maximum: 20 }
  validates :cost, inclusion: { in: 0..100 }, message: "Must be less than $100"
end
