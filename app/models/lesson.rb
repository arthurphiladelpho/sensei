class Lesson < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true
  validates :description, presence: true
  validates :difficulty, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :duration, presence: true
  validates :price, presence: true
  validates :style, presence: true
end
