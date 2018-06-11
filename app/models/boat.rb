class Boat < ApplicationRecord
  has_many :users, :through => :schedules
  has_many :jobs, :through => :schedules
  has_many :schedules
end
