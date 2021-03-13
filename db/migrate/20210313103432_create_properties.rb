class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.references :lga, null: false, foreign_key: true
      t.integer :council_property_number
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
