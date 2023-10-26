class CreateManufacturer < ActiveRecord::Migration[7.1]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :website

      t.timestamps
    end
  end
end
