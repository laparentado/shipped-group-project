class Job < ApplicationRecord
  belongs_to :user
  has_many :schedules, :through => :boats
  has_many :boats
  validates :description, length: { minimum: 20 }
  validates :cost, numericality: { greater_than: 100,  only_integer: true }
end
