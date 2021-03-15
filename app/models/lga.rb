class Lga < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :long_name
  has_many :properties
  has_many :addresses
end
