class DropManufacturers < ActiveRecord::Migration[7.1]
  def change
    drop_table :manufacturers
  end
end
