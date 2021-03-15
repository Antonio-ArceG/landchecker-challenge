require 'rails_helper'

RSpec.describe Lga, type: :model do
  before(:all) do

    @lga =  FactoryBot.build(:lga)
    @property = FactoryBot.build(:property, lga: @lga)
    @address = FactoryBot.build(:address, lga: @lga, property: @property)

  end

  it "is valid with valid attributes" do
    expect(@lga).to be_valid
  end

  it "can have many properties" do
    @lga.properties << @property
    expect(@lga.properties.first).to be_an_instance_of(Property)
  end

  it "can have many addresses" do
    @lga.addresses << @address
    expect(@lga.addresses.first).to be_an_instance_of(Address)
  end

  it "is not valid without a name" do
    @lga.name = nil
    expect(@lga).to_not be_valid
  end

  it "is not valid without a long_name" do
    @lga.long_name = nil
    expect(@lga).to_not be_valid
  end
end
