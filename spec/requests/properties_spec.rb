require 'rails_helper'

RSpec.describe "Properties", type: :request do
  describe "GET /properties" do
    it "should connect to individual property show" do
      lga = Lga.new(id: 42,
            name: 'CARDINIA',
            long_name: 'CARDINIAPOLIS')

      address = Address.new(id: 1,
                           property_id: 123,
                           full_address: "123 fake address",
                           lga_id: 42,
                           state: 'VIC',
                           postcode: 3000)

      Property.create(id: 123,
                 lga_id: 42,
                 council_property_number: 987,
                 longitude: 45678,
                 latitude: 76543,
                 lga: lga,
                 address: address)


      get "/api/v1/properties/123"
      expect(response).to have_http_status(200)
    end
  end
end
