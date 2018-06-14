class Job < ApplicationRecord
  belongs_to :user
  belongs_to :schedule
  validates :description, length: { minimum: 20 }
  validates :cost, numericality: { greater_than: 100,  only_integer: true }
end
