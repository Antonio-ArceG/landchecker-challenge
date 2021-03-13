class CreateLgas < ActiveRecord::Migration[6.0]
  def change
    create_table :lgas do |t|
      t.string :name
      t.string :long_name

      t.timestamps
    end
  end
end
