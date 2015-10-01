# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(first_name:  "Example",
			 last_name:  "User",
             email: "example3@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  firstname  = Faker::Name.first_name
  lastname  = Faker::Name.last_name

  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(first_name:  firstname,
  			   last_name:  lastname,
               email: email,
               password:              password,
               password_confirmation: password)
end