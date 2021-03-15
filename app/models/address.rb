class Address < ApplicationRecord
  validates_presence_of :id
  validates_presence_of :property_id
  validates_presence_of :full_address
  validates_presence_of :lga_id
  validates_presence_of :state
  validates_presence_of :postcode
  belongs_to :property
  belongs_to :lga
end
