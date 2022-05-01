class Destination < ApplicationRecord
  belongs_to :user
  belongs_to :street

  validates :user, uniqueness: {scope: :street}
  validates :street, uniqueness: {scope: :user}
end
