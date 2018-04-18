# frozen_string_literal: true

# create spotlight_models table, a table of spotlight models
class CreateSpotlightModels < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlight_models do |t|
      t.string :spotlight_name
      t.float :spotlight_weight
      t.references :manufacturer

      t.timestamps
    end
  end
end
