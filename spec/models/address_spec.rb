require 'rails_helper'

RSpec.describe Address, type: :model do

  before(:all) do
    @lga = Lga.new(id: 42,
            name: 'CARDINIA',
            long_name: 'CARDINIAPOLIS')

    @property = Property.new(id: 123,
                 lga_id: 42,
                 council_property_number: 987,
                 longitude: 45678,
                 latitude: 76543)

    @property.lga = @lga
  end

  subject {
    Address.new(id: 1,
                property_id: 123,
                full_address: "123 fake address",
                lga_id: 42,
                state: 'VIC',
                postcode: 3000)
  }

  it "is valid with valid attributes" do
    subject.lga = @lga
    subject.property = @property
    expect(subject).to be_valid
  end

  it "is not valid if property is not an instance of Property class" do
    subject.property = @property
    expect(subject.property).to be_an_instance_of(Property)
  end

  it "is not valid if lga is not an instance of Lga class" do
    subject.lga = @lga
    expect(subject.lga).to be_an_instance_of(Lga)
  end

  it "is not valid without a full_address" do
    subject.full_address = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a lga_id" do
   subject.lga_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a state" do
    subject.state = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a postcode" do
    subject.postcode = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a property_id" do
    subject.property_id = nil
    expect(subject).to_not be_valid
  end
  # pending "add some examples to (or delete) #{__FILE__}"
end
