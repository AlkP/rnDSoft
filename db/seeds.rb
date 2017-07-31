# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do |x|
  Page.create!( name: "Name #{x}", description: "Description #{x}", tags: "lemon orange" )
end

15.times do |x|
  Page.create!( name: "Name #{x*2}", description: "Description #{x*2}", tags: "juice orange" )
end

15.times do |x|
  Page.create!( name: "Name #{x*3}", description: "Description #{x*3}", tags: "lemon juice" )
end