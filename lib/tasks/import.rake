require 'csv'

namespace :import do
  desc 'Populate database'
  task database: :environment do
    Rake::Task['import:lgas'].invoke
    Rake::Task['import:properties'].invoke
    Rake::Task['import:addresses'].invoke
  end

  desc "Import lgas"
  task lgas: :environment do
    CSV.foreach "db/support/lgas.csv", headers: true, header_converters: :symbol do |row|
      Lga.create(id: row[0], name: row[1], long_name: row[2])
      puts "created lga #{row[2]}"
    end
  end

  desc "Import properties"
  task properties: :environment do
    CSV.foreach "db/support/properties.csv", headers: true, header_converters: :symbol do |row|
      # lga_id = row[1].to_i
      lga = Lga.find(row[1])
      Property.create(id: row[0], lga: lga, council_property_number: row[2], longitude: row[3], latitude: row[4])
      puts "created property #{row[0]}"
    end
  end

  desc "Import addresses"
  task addresses: :environment do
    CSV.foreach "db/support/addresses.csv", headers: true, header_converters: :symbol do |row|
      lga = Lga.find(row[3])
      property = Property.find(row[1])
      Address.create(id: row[0], property: property, full_address: row[2], lga: lga, state: row[4], postcode: row[5])
      puts "created address #{row[2]}"
    end
  end
end

