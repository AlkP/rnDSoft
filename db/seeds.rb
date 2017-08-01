# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times { |x| Page.create!( name: "Name #{x}", description: "Description #{x}", tags: "lemon orange", category: "news" ) }
15.times { |x| Page.create!( name: "Name #{x+15}", description: "Description #{x+15}", tags: "juice orange", category: "humor" ) }
15.times { |x| Page.create!( name: "Name #{x+30}", description: "Description #{x+30}", tags: "lemon juice", category: "cooking" ) }