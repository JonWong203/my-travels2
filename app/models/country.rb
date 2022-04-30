class Country < ApplicationRecord
  has_many :streets, dependent: :destroy
end
