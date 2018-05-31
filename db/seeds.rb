# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
Lawyer.destroy_all
User.destroy_all
Specialty.destroy_all


@family = Specialty.create!(name: "FAMILY")
@business = Specialty.create!(name: "COMMERCIAL")
@tax = Specialty.create!(name: "TAX")
@crime = Specialty.create!(name: "CRIMINAL")
@contracts = Specialty.create!(name: "EMPLOYMENT")

@user1 = User.create!(first_name: "Abel", email: "Abel@gmail.com", password: "metzplusgrand")
@user2 = User.create!(first_name: "Alex", email: "Alex@gmail.com", password: "metzplusgrand2")
@user3 = User.create!(first_name: "Alphonse", email: "Alphonse@gmail.com", password: "metzplusgrand3")
@user4 = User.create!(first_name: "Alain", email: "Alain@gmail.com", password: "metzplusgrand4")
@user5 = User.create!(first_name: "Michael", email: "Michael@gmail.com", password: "metzplusgrand")
@user6 = User.create!(first_name: "Thomas", email: "Thomas@gmail.com", password: "metzplusgrand2")
@user7 = User.create!(first_name: "Maximilian", email: "Maximilian@gmail.com", password: "metzplusgrand3")
@user8 = User.create!(first_name: "Lars", email: "Lars@gmail.com", password: "metzplusgrand4")
@user9 = User.create!(first_name: "Arthur", email: "Arthur@gmail.com", password: "basededonne")

Lawyer.create!( specialty: @family, address: "Berlin", professional_email: @user1.email, user: @user1 )
Lawyer.create!( specialty: @family, address: "Lisboa", professional_email: @user2.email, user: @user2 )
Lawyer.create!( specialty: @family, address: "Paris", professional_email: @user3.email, user: @user3 )
Lawyer.create!( specialty: @family, address: "Frankfurt", professional_email: @user4.email, user: @user4 )
Lawyer.create!( specialty: @family, address: "Medellin", professional_email: @user5.email, user: @user5 )
Lawyer.create!( specialty: @family, address: "Bali", professional_email: @user6.email, user: @user6 )
Lawyer.create!( specialty: @family, address: "London", professional_email: @user7.email, user: @user7 )
Lawyer.create!( specialty: @family, address: "Porto", professional_email: @user8.email, user: @user8 )
Lawyer.create!( specialty: @family, address: "Luxembourg", professional_email: @user9.email, user: @user8 )
