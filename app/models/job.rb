class Job < ApplicationRecord
  belongs_to :boat
  belongs_to :user
  validates :description, length: { minimum: 20 }
  validates :cost, numericality: { greater_than: 100,  only_integer: true }
end
