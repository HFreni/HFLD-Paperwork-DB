class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :gel_num
      t.string :gel_name
      t.string :gel_hex
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
