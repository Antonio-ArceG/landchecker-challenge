class Property < ApplicationRecord
  validates_presence_of :id
  validates_presence_of :lga_id
  validates_presence_of :longitude
  validates_presence_of :latitude
  validates_presence_of :address

  has_one :address, :dependent => :destroy
  belongs_to :lga
end
