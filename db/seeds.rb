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
@commercial = Specialty.create!(name: "COMMERCIAL")
@tax = Specialty.create!(name: "TAX")
@criminal = Specialty.create!(name: "CRIMINAL")
@employment = Specialty.create!(name: "EMPLOYMENT")

@user1 = User.create!(first_name: "Diogo", email: "Diogo@gmail.com", password: "password")
@user2 = User.create!(first_name: "Swen", email: "Swen@gmail.com", password: "password")
@user3 = User.create!(first_name: "Emily", email: "Emily@gmail.com", password: "password")
@user4 = User.create!(first_name: "Ally", email: "Ally@gmail.com", password: "password")
@user5 = User.create!(first_name: "Jerome", email: "Jerome@gmail.com", password: "password")
@user6 = User.create!(first_name: "Monica", email: "Monica@gmail.com", password: "password")
@user7 = User.create!(first_name: "Pedro", email: "Pedro@gmail.com", password: "password")
@user8 = User.create!(first_name: "Antoine", email: "Antoine@gmail.com", password: "password")
@user9 = User.create!(first_name: "Maria", email: "Maria@gmail.com", password: "password")
@user10 = User.create!(first_name: "Arthur", email: "Arthur@gmail.com", password: "password")
@user11 = User.create!(first_name: "Toddy", email: "Todd@gmail.com", password: "password")
@user12 = User.create!(first_name: "Boris", email: "Boris@gmail.com", password: "password")

Lawyer.create!( specialty: @family, address: "Lisbon", professional_email: @user1.email, user: @user1 )
Lawyer.create!( specialty: @employment, address: "Berlin", professional_email: @user2.email, user: @user2 )
Lawyer.create!( specialty: @tax, address: "Dublin", professional_email: @user3.email, user: @user3 )
Lawyer.create!( specialty: @family, address: "Cap Town", professional_email: @user4.email, user: @user4 )
Lawyer.create!( specialty: @criminal, address: "Bruxelles", professional_email: @user5.email, user: @user5 )
Lawyer.create!( specialty: @commercial, address: "Sporting", professional_email: @user6.email, user: @user6 )
Lawyer.create!( specialty: @family, address: "Lisbon", professional_email: @user7.email, user: @user7 )
Lawyer.create!( specialty: @commercial, address: "Lille", professional_email: @user8.email, user: @user8 )
Lawyer.create!( specialty: @family, address: "New York", professional_email: @user9.email, user: @user9 )
Lawyer.create!( specialty: @family, address: "Luxembourg", professional_email: @user10.email, user: @user10 )
Lawyer.create!( specialty: @criminal, address: "Salt Lake City", professional_email: @user11.email, user: @user11 )
Lawyer.create!( specialty: @commercial, address: "Paris", professional_email: @user12.email, user: @user12 )
