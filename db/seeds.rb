# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

columns = [:id, :gel_num, :gel_name, :gel_hex, :manufacturer_id]
values = CSV.read(Rails.root.join('db/HFLD-Gels.csv'))

timing = Benchmark.measure { Color.import columns, values, validate: false, on_duplicate_key_update: {conflict_target: [:id]} }

puts timing

# require 'csv'
#
# datafile = Rails.root + 'db/HFLD-Gels.csv'
#
# CSV.foreach(datafile, headers: true) do |row|
#   Color.find_or_create_by({id: row[0]}) do |hr|
#     hr.id = row[0]
#     hr.gel_num = row[1]
#     hr.gel_name = row[2]
#     hr.gel_hex = row[3]
#     hr.manufacturer_id = row[4]
#   end
# end

# CSV.foreach(Rails.root.join('db/HFLD-Gels.csv')) do |row|
#     data = {
#       id: row[0],
#       gel_num: row[1],
#       gel_name: row[2],
#       gel_hex: row[3],
#       manufacturer_id: row[4]
#     }
#
#     Color.where(id: row[0]).first_or_create(data).update(data)
# end
