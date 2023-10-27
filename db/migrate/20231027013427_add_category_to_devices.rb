class AddCategoryToDevices < ActiveRecord::Migration[7.1]
  def change
    add_reference :devices, :category, foreign_key: true
  end
end
