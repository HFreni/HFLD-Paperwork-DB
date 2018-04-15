class CreateSpotlightCues < ActiveRecord::Migration[5.2]
  def change
    create_table :spotlight_cues do |t|
      t.integer :lxq
      t.float :q
      t.text :cueInfo
      t.boolean :scene
      t.boolean :song

      t.timestamps
    end
  end
end
