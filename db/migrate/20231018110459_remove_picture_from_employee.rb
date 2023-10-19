class RemovePictureFromEmployee < ActiveRecord::Migration[7.1]
  def change
    remove_column :employees, :picture, :string
  end
end
