class Street < ApplicationRecord
  belongs_to :country
  has_many :users, through: :destinations

end
