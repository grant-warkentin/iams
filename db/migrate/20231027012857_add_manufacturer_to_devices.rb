class AddManufacturerToDevices < ActiveRecord::Migration[7.1]
  def change
    add_reference :devices, :manufacturer, foreign_key: true
  end
end
