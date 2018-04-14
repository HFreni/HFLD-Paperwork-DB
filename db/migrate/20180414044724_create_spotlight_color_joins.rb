class CreateSpotlightColorJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlight_color_joins do |t|
      t.integer :spotlightID
      t.integer :colorID

      t.timestamps
    end
  end
end
