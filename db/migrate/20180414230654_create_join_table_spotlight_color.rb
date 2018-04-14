class CreateJoinTableSpotlightColor < ActiveRecord::Migration[5.2]
  def change
    create_join_table :spotlights, :colors do |t|
      # t.index [:spotlight_id, :color_id]
      # t.index [:color_id, :spotlight_id]
    end
  end
end
