require 'rails_helper'

RSpec.describe Property, type: :model do
  before(:all) do

    @lga = FactoryBot.build(:lga)
    @property = FactoryBot.build(:property, lga: @lga)
    @address = FactoryBot.build(:address, lga: @lga, property: @property)
    @property.address = @address

  end

  it "must have an address" do
    @property.address = nil
    expect(@property).to_not be_valid
  end

  it "is not valid if address is not an instance of the Address class" do
    @property.address = @address
    expect(@property.address).to be_an_instance_of(Address)
  end

  it "must belong to an lga" do
    @property.lga = nil
    expect(@property).to_not be_valid
  end

  it "is not valid if lga is not an instance of the Lga class" do
    @property.lga = @lga
    expect(@property.lga).to be_an_instance_of(Lga)
  end

  it "is valid with valid attributes" do
    @property.lga = @lga
    expect(@property).to be_valid
  end

  it "is not valid without a lga_id" do
    @property.lga_id = nil
    expect(@property).to_not be_valid
  end


  it "is not valid without a longitude" do
    @property.longitude = nil
    expect(@property).to_not be_valid
  end

  it "is not valid without a latitude" do
    @property.latitude = nil
    expect(@property).to_not be_valid
  end
end
