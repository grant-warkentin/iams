class AddWebsiteToDevices < ActiveRecord::Migration[7.1]
  def change
    add_column :devices, :website, :string
  end
end
