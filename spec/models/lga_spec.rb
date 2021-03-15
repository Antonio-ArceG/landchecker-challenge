require 'rails_helper'

RSpec.describe Lga, type: :model do
  before(:all) do
    @address = Address.new(id: 1,
                           property_id: 123,
                           full_address: "123 fake address",
                           lga_id: 42,
                           state: 'VIC',
                           postcode: 3000)

    @property = Property.new(id: 123,
                             lga_id: 42,
                             council_property_number: 987,
                             longitude: 45678,
                             latitude: 76543)
  end

  subject {
    Lga.new(id: 43,
            name: 'CASEY',
            long_name: 'CASEY SHIRE')
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "can have many properties" do
    subject.properties << @property
    expect(subject.properties.first).to be_an_instance_of(Property)
  end

  it "can have many addresses" do
    subject.addresses << @address
    expect(subject.addresses.first).to be_an_instance_of(Address)
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a long_name" do
    subject.long_name = nil
    expect(subject).to_not be_valid
  end
end
