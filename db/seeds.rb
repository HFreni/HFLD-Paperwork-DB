# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

columns = %i[id gel_num gel_name gel_hex manufacturer_id]
values = CSV.read(Rails.root.join('db/HFLD-Gels.csv'))

timing = Benchmark.measure { Color.import columns, values, validate: false, on_duplicate_key_update: { conflict_target: [:id] } }

puts timing


# Build a couple person records
Person.create({:id => 1, :person_fname => 'Deon', :person_lname => 'Italiano' })
Person.create({:id => 2, :person_fname => 'Neville', :person_lname => 'Ebner' })
Person.create({:id => 3, :person_fname => 'Lorenzo', :person_lname => 'Haskin' })
Person.create({:id => 4, :person_fname => 'Fermin', :person_lname => 'Rusek' })
ActiveRecord::Base.connection.execute("ALTER SEQUENCE public.people_id_seq RESTART WITH 1000")

# Build a couple generic spotlight models
SpotlightModel.create({id: 1, spotlight_weight: rand(100)+100, manufacturer_id: 5, spotlight_name: 'Generic Spotlight Type 1'})
SpotlightModel.create({id: 2, spotlight_weight: rand(100)+100, manufacturer_id: 5, spotlight_name: 'Generic Spotlight Type 2'})
SpotlightModel.create({id: 3, spotlight_weight: rand(100)+100, manufacturer_id: 5, spotlight_name: 'Generic Spotlight Type 3'})
SpotlightModel.create({id: 4, spotlight_weight: rand(100)+100, manufacturer_id: 5, spotlight_name: 'Generic Spotlight Type 4'})
ActiveRecord::Base.connection.execute("ALTER SEQUENCE public.spotlight_models_id_seq RESTART WITH 1000")

# Build a couple generic spotlight positions
SpotlightPosition.create({id: 1, position_name: "House Left"})
SpotlightPosition.create({id: 2, position_name: "House Right"})
SpotlightPosition.create({id: 3, position_name: "Projection Booth"})
SpotlightPosition.create({id: 4, position_name: "Upstage Truss"})
ActiveRecord::Base.connection.execute("ALTER SEQUENCE public.spotlight_positions_id_seq RESTART WITH 1000")

# Build a couple generic spotlights
Spotlight.create({id: 1, spotlight_name: 'Spot 1', operator_id: 1, model_id: 1, position_id: 1 })
Spotlight.create({id: 2, spotlight_name: 'Spot 2', operator_id: 2, model_id: 1, position_id: 3 })
Spotlight.create({id: 3, spotlight_name: 'Spot 3', operator_id: 3, model_id: 1, position_id: 2 })
Spotlight.create({id: 4, spotlight_name: 'Rear Spot', operator_id: 4, model_id: 2, position_id: 4 })
ActiveRecord::Base.connection.execute("ALTER SEQUENCE public.spotlights_id_seq RESTART WITH 1000")

# Populate some spotlights with some colors
color_frame_index = 1
Spotlight.all.each do |spotlight|
  ColorFrame.create({id: color_frame_index, color_id: 166, spotlight_id: spotlight.id, frame_position: 1 })
  ColorFrame.create({id: color_frame_index+1, color_id: 227, spotlight_id: spotlight.id, frame_position: 2 })
  ColorFrame.create({id: color_frame_index+2, color_id: 218, spotlight_id: spotlight.id, frame_position: 3 })
  ColorFrame.create({id: color_frame_index+3, color_id: 325, spotlight_id: spotlight.id, frame_position: 4 })
  ColorFrame.create({id: color_frame_index+4, color_id: 407, spotlight_id: spotlight.id, frame_position: 5 })
  ColorFrame.create({id: color_frame_index+5, color_id: 261, spotlight_id: spotlight.id, frame_position: 6 })
  color_frame_index = color_frame_index + 6
end
ActiveRecord::Base.connection.execute("ALTER SEQUENCE public.color_frames_id_seq RESTART WITH 1000")

# Populate some SpotCue's
SpotCue.create( {id: 1, number: 141.0, light_cue_number: 141.0, cue_type: "Scene", name: "ACT TWO", notes: ""})
SpotCue.create( {id: 2, number: 142.0, light_cue_number: 142.0, cue_type: "Song", name: "\"Pierre\"", notes: ""})
SpotCue.create( {id: 3, number: 142.1, cue_type: "Regular", name: "With Cue 142", notes: ""})
SpotCue.create( {id: 4, number: 142.2, cue_type: "Regular", name: "Actor 2 heads downstage", notes: ""})
ActiveRecord::Base.connection.execute("ALTER SEQUENCE public.spot_cues_id_seq RESTART WITH 1000")

# Populate some SpotCuesSpotlight's
SpotCueSpotlight.create({id: 1, spot_cue_id: 1, spotlight_id: 1, size: "n/a", intensity: "n/a", action: "Wake up!", time: 3, notes: ""})
SpotCueSpotlight.create({id: 2, spot_cue_id: 1, spotlight_id: 2, size: "n/a", intensity: "n/a", action: "Wake the fuck up", time: 3, notes: ""})
SpotCueSpotlight.create({id: 3, spot_cue_id: 3, spotlight_id: 1, size: "1/2 B", intensity: "75%", action: "PU Actor 1", time: 3, notes: ""})
SpotCueSpotlight.create({id: 4, spot_cue_id: 3, spotlight_id: 2, size: "1/8 B", intensity: "100%", action: "PU Actor 2", time: 3, notes: ""})
SpotCueSpotlight.create({id: 5, spot_cue_id: 4, spotlight_id: 2, size: "1/8 B", intensity: "100%", action: "Fall Asleep", time: 3, notes: ""})
ActiveRecord::Base.connection.execute("ALTER SEQUENCE public.spot_cue_spotlights_id_seq RESTART WITH 1000")

# Populate some manufacturers
Manufacturer.create({id: 1, name: 'Apollo' })
Manufacturer.create({id: 2, name: 'Rosco' })
Manufacturer.create({id: 3, name: 'Lee' })
Manufacturer.create({id: 4, name: 'Gam' })
Manufacturer.create({id: 5, name: 'Generic Manufacturer' })
ActiveRecord::Base.connection.execute("ALTER SEQUENCE public.manufacturers_id_seq RESTART WITH 1000")
