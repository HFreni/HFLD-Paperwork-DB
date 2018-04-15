class CreateProductions < ActiveRecord::Migration[5.2]
  def change
    create_table :productions do |t|
      t.string :production_name
      t.date :production_date

      t.timestamps
    end
  end
end
