# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

datafile = Rails.root + 'db/HFLD-Gels.csv'

CSV.foreach(datafile, headers: true) do |row|
  Color.find_or_create_by({id: row[0]}) do |hr|
    hr.id = row[0]
    hr.gel_num = row[1]
    hr.gel_name = row[2]
    hr.gel_hex = row[3]
    hr.manufacturer_id = row[4]
  end
end
