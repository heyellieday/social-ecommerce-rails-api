# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Jamie Pilgrim", email: "hello@jamiepilgrim.com", password: "password", uid: "3")
Store.create!(name: "The Store", tagline: "Imma Store", description: "Imma a longer description of the store.", site_url: "www.thestore.com", creator_id: 1)
Address.create!(user_id: 1, type: "store", line1: "222 street Ave", line2: "APT 1A", city: "Chicago", state: "IL", zip_code: 60640, store_id: 1)
