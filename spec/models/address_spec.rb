require 'rails_helper'

RSpec.describe Address, type: :model do
  before(:all) do

    @lga = FactoryBot.build(:lga)
    @property = FactoryBot.build(:property, lga: @lga)
    @address = FactoryBot.build(:address, lga: @lga, property: @property)
    @property.address = @address

  end

  it "is valid with valid attributes" do
    expect(@address).to be_valid
  end

  it "is not valid if property is not an instance of Property class" do
    expect(@address.property).to be_an_instance_of(Property)
  end

  it "is not valid if lga is not an instance of Lga class" do
    expect(@address.lga).to be_an_instance_of(Lga)
  end

  it "is not valid without a full_address" do
    @address.full_address = nil
    expect(@address).to_not be_valid
  end

  it "is not valid without a lga_id" do
   @address.lga_id = nil
    expect(@address).to_not be_valid
  end

  it "is not valid without a state" do
    @address.state = nil
    expect(@address).to_not be_valid
  end

  it "is not valid without a postcode" do
    @address.postcode = nil
    expect(@address).to_not be_valid
  end

  it "is not valid without a property_id" do
    @address.property_id = nil
    expect(@address).to_not be_valid
  end
end
