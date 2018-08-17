class Lesson < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :description, presence: true
  validates :difficulty, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :duration, presence: true
  validates :price, presence: true
  validates :style, presence: true
  validates :location, presence: true
  validates :photo, presence: true
  # using 'location' attribute to locate lat/long
  geocoded_by :location
  # runs geocode (searches for lat/long) after Lesson is saved to database.
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch
  pg_search_scope :search_by_name_style_and_description,
  against: [ :name, :description, :style ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  def marker
    {
      lat: latitude,
      lng: longitude,
      icon: 'http://icons.iconarchive.com/icons/icons-land/vista-map-markers/32/Map-Marker-Marker-Outside-Azure-icon.png'
    }
  end
end
