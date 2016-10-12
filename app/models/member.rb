class Member < ApplicationRecord
  validates :name,     presence: true
  validates :bio,      presence: true
  validates :position, presence: true

  validates_uniqueness_of :name, :scope => :position
end
