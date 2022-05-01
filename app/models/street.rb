class Street < ApplicationRecord
  belongs_to :country
  # has_one :country
  has_many :destinations, dependent: :destroy
  has_many :users, through: :destinations

  validates :country, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :street_name, presence: true

end
