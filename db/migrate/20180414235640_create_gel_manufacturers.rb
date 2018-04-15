class CreateGelManufacturers < ActiveRecord::Migration[5.2]
  def change
    create_table :gel_manufacturers do |t|
      t.string :name

      t.timestamps
    end
  end
end
