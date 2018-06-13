class Job < ApplicationRecord
  belongs_to :boat
  belongs_to :user
  validates :description, :uniqueness => true
  validates :cost, inclusion: { in: 0..100 }
end
