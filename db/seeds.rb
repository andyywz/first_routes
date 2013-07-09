# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ name: 'Andy', email: 'andyywz@gmail.com', password: "andyisawesome"}, { name: 'Natalie', email: 'haha@gmail.com', password: "natisawesome" }])
contact = Contact.create({name: 'Nat', email: 'nat@nat.com', user_id: 1})
favorite = Favorite.create({contact_id: 1})