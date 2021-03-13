class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :feature_id
      t.integer :property_id
      t.string :full_address
      t.integer :lga_code
      t.string :state
      t.integer :postcode

      t.timestamps
    end
  end
end
