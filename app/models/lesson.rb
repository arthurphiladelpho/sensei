class Lesson < ApplicationRecord
  has_many :bookings
  # using 'location' attribute to locate lat/long
  geocoded_by :location
  # runs geocode (searches for lat/long) after Lesson is saved to database.
  after_validation :geocode, if: :will_save_change_to_location?

  # Somebody, please, check this. I am not sure
  has_many :users, through: :bookings


  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :difficulty, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :duration, presence: true
  validates :price, presence: true
  validates :style, presence: true
  validates :location, presence: true
end
