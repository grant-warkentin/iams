class RemoveManufacturerAndcategoryFromDevices < ActiveRecord::Migration[7.1]
  def change
    remove_column :devices, :manufacturer, :string
    remove_column :devices, :category, :string
  end
end
