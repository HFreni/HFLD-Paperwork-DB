class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :person_fname
      t.string :person_lname
      t.string :person_phone
      t.string :person_email
      t.string :person_role

      t.timestamps
    end
  end
end
