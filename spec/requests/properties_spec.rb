require 'rails_helper'

RSpec.describe "Properties", type: :request do
  before(:all) do

    @lga = FactoryBot.create(:lga)
    @property = FactoryBot.build(:property, lga: @lga)
    @address = FactoryBot.create(:address, lga: @lga, property: @property)
    @property.address = @address

  end

  describe "GET /properties" do
    it "should connect to individual property show" do

      get "/api/v1/properties/#{@property.id}"
      expect(response).to have_http_status(200)
    end
  end
end
