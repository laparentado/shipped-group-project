class Job < ApplicationRecord
  has_many :boats, :through => :schedules
  has_many :users, :through => :schedules
  has_many :schedules
end
