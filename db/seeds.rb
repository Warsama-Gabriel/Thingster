# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

johnsmith = User.create!( email: 'johnsmith@john.com', password: 12345678, password_confirmation: 12345678);

sarahpalin = User.create!(email: 'sarahpalin@sarah.com', password: 12345678, password_confirmation: 12345678);


100.times do 
  johnsmith.things.create(name: Forgery(:name).full_name, description: Forgery(:lorem_ipsum).words(10))
end

100.times do 
  sarahpalin.things.create(name: Forgery(:name).full_name, description: Forgery(:lorem_ipsum).words(10))
end