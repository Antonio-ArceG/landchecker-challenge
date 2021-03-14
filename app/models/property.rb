class Property < ApplicationRecord
  has_one :address
  belongs_to :lga
end
