# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    Thing.find_or_create_by(name: "Japan", description: "Electronics Computers")
    Thing.find_or_create_by(name: "France", description: "Croissants beer people with bad attitudes")
    Thing.find_or_create_by(name: "USA", description: "Hamburgers football , Bombs")
    Thing.find_or_create_by(name: "India", description: "Cows Temple, Math")

200.times do 
  Thing.find_or_create_by(name: Forgery(:name).full_name, description: Forgery(:lorem_ipsum).words(10))
end