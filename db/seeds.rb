# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first


User.create!(first_name: "Abel", email: "Abel@Abel.Abel", password: "metzplusgrand")
User.create!(first_name: "Abdel", email: "Abdel@Abdel.Abdel", password: "metzplusgrand2")
User.create!(first_name: "Alphonse", email: "Alphonse@Alphonse.Alphonse", password: "metzplusgrand3")
User.create!(first_name: "Alain", email: "Alain@Alain.Alain", password: "metzplusgrand4")

Lawyer.create!(user_id: "1", specialties: ["crime"])
Lawyer.create!(user_id: "2", specialties: ["family"])
Lawyer.create!(user_id: "3", specialties: ["business"])
