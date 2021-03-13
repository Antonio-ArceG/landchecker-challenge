class CreateLgas < ActiveRecord::Migration[6.0]
  def change
    create_table :lgas do |t|
      t.integer :code
      t.string :name
      t.string :long_name

      t.timestamps
    end
  end
end
