class CreateSpotlightSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlight_sizes do |t|
      t.belongs_to :spotlight_cue, index: true
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
