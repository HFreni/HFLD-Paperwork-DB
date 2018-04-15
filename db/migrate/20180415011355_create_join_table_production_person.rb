class CreateJoinTableProductionPerson < ActiveRecord::Migration[5.2]
  def change
    create_join_table :productions, :people do |t|
      # t.index [:production_id, :person_id]
      # t.index [:person_id, :production_id]
    end
  end
end
