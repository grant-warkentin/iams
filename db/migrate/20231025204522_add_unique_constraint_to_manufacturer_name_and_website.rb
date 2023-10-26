class AddUniqueConstraintToManufacturerNameAndWebsite < ActiveRecord::Migration[7.1]
  def change
    add_index :manufacturers, :name, unique: true
    add_index :manufacturers, :website, unique: true
  end
end
