FactoryBot.define do
  factory :lga do
    id {55}
    name {'CARDINIA'}
    long_name {'CARDINIAPOLIS'}
  end

  factory :property do
   id {129}
   lga_id {55}
   council_property_number {987}
   longitude {46678}
   latitude {76553}
  end

  factory :address do
    id {1}
    property_id {129}
    full_address {"123 fake address"}
    lga_id {55}
    state {'VIC'}
    postcode {3000}
  end
end
