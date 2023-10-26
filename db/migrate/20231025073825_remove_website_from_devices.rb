class RemoveWebsiteFromDevices < ActiveRecord::Migration[7.1]
  def change
    remove_column :devices, :website, :string
  end
end
