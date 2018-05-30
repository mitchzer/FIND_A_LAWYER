# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first


@user1 = User.create!(first_name: "Abel", email: "Abel@Abel.Abel", password: "metzplusgrand")
@user2 = User.create!(first_name: "Alex", email: "Alex@Alex.Alex", password: "metzplusgrand2")
@user3 = User.create!(first_name: "Alphonse", email: "Alphonse@Alphonse.Alphonse", password: "metzplusgrand3")
@user4 = User.create!(first_name: "Alain", email: "Alain@Alain.Alain", password: "metzplusgrand4")

Lawyer.create!( name: "Martin Richter", specialties: ["crime"], address: "Rue de lawyer 123", email: "Richter@Richter.Richter", user: @user1 )
Lawyer.create!( name: "Anthony Lawyer", specialties: ["business"], address: "Rue de Richter 123", email: "Lawyer@Lawyer.Lawyer", user: @user2 )
Lawyer.create!( name: "Mitch Wlodarczyk", specialties: ["civil"], address: "Rue de Mitch 123", email: "Mitch@Mitch.Mitch", user: @user3 )
