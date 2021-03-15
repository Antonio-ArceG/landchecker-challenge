require 'rails_helper'

RSpec.describe Property, type: :model do
  before(:all) do
    @lga = Lga.new(id: 42,
            name: 'CARDINIA',
            long_name: 'CARDINIAPOLIS')

    @address = Address.new(id: 1,
                           property_id: 123,
                           full_address: "123 fake address",
                           lga_id: 42,
                           state: 'VIC',
                           postcode: 3000)
  end

  subject {
    Property.new(id: 123,
                 lga_id: 42,
                 council_property_number: 987,
                 longitude: 45678,
                 latitude: 76543)
  }

  it "must have an address" do
    subject.address = nil
    expect(subject).to_not be_valid
  end

  it "is not valid if address is not an instance of the Address class" do
    subject.address = @address
    expect(subject.address).to be_an_instance_of(Address)
  end

  it "must belong to an lga" do
    subject.lga = nil
    expect(subject).to_not be_valid
  end

  it "is not valid if lga is not an instance of the Lga class" do
    subject.lga = @lga
    expect(subject.lga).to be_an_instance_of(Lga)
  end

  it "is valid with valid attributes" do
    subject.lga = @lga
    expect(subject).to be_valid
  end

  it "is not valid without a lga_id" do
    subject.lga_id = nil
    expect(subject).to_not be_valid
  end


  it "is not valid without a longitude" do
    subject.longitude = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a latitude" do
    subject.latitude = nil
    expect(subject).to_not be_valid
  end
end
