class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  #checking that associated objects (user and lesson are present)
  validates :user, presence: true
  validates :lesson, presence: true

  validates :datetime, presence: true
end
