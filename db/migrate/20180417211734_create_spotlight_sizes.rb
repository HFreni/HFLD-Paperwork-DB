# frozen_string_literal: true

# create the spotlight_sizes table
class CreateSpotlightSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlight_sizes do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
