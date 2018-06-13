class Boat < ApplicationRecord
has_many :users, :through => :jobs
  has_many :jobs
end
