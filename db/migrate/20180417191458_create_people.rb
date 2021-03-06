# frozen_string_literal: true

# create the people table, which allows you to assign people to spotlights or (later) roles in a prodution
class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :person_fname
      t.string :person_lname
      t.string :person_email
      t.string :person_phone

      t.timestamps
    end
  end
end
