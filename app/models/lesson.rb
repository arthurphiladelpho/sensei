class Lesson < ApplicationRecord
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :difficulty, inclusion: { in: [1, 2, 3] }
  validates :duration, presence: true
  validates :price, presence: true
  validates :style, presence: true
end
