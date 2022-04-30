class Destination < ApplicationRecord
  belongs_to :user
  belongs_to :street

  validates :user
  validates :street
end
