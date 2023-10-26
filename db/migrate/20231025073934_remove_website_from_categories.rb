class RemoveWebsiteFromCategories < ActiveRecord::Migration[7.1]
  def change
    remove_column :categories, :website, :string
  end
end
