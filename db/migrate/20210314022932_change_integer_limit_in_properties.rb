class ChangeIntegerLimitInProperties < ActiveRecord::Migration[6.0]
  def change
    change_column :properties, :council_property_number, :integer, limit: 8
  end
end
