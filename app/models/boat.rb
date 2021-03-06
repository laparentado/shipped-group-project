class Boat < ApplicationRecord
has_many :schedules, :through => :jobs
belongs_to :user
has_many :jobs



has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/







  validates :name, :uniqueness => true
end
