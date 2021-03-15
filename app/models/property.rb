class Property < ApplicationRecord
  validates_presence_of :id
  validates_presence_of :lga_id
  validates_presence_of :council_property_number
  validates_presence_of :longitude
  validates_presence_of :latitude

  has_one :address
  belongs_to :lga
end
