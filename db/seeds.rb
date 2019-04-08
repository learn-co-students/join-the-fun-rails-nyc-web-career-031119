# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

5.times do
  Passenger.create(name: Faker::Name.first_name)
end
5.times do
  Taxi.create(name: Faker::Name.first_name)
end

20.times do
  Ride.create(passenger_id: rand(1..5), taxi_id: rand(1..5))
end
