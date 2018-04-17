# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

columns = [:id, :gel_num, :gel_name, :gel_hex, :manufacturer]
values = CSV.read(Rails.root.join('db/HFLD-Gels.csv'))

timing = Benchmark.measure { Color.import columns, values, validate: false, on_duplicate_key_update: {conflict_target: [:id]} }

puts timing