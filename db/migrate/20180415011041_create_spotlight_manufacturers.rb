class CreateSpotlightManufacturers < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlight_manufacturers do |t|
      t.string :manufacturer_name

      t.timestamps
    end
  end
end
