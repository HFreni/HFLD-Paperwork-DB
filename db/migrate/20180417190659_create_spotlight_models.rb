class CreateSpotlightModels < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlight_models do |t|
      t.belongs_to :spotlight, index: true
      t.string :spotlight_name
      t.float :spotlight_weight
      t.references :manufacturer

      t.timestamps
    end
  end
end
