class AddManufacturerAndCategoryToDevices < ActiveRecord::Migration[7.1]
  def change
    add_column :devices, :manufacturer, :string
    add_column :devices, :category, :string
  end
end
