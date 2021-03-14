class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :property, null: false, foreign_key: true
      t.string :full_address
      t.references :lga, null: false, foreign_key: true
      t.string :state
      t.integer :postcode

      t.timestamps
    end
  end
end
