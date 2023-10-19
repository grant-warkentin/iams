class AddPictureToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :picture, :string
  end
end
