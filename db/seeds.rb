# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


student = Student.create(
	first_name: "Muhammad",
	last_name: 	"Zubair",
	email: 	"zubair@gmail.com" 

	)
student = Student.create(
	first_name: "Muhammad",
	last_name: 	"Asad",
	email: 	"asad@gmail.com" 

	)
20.times do |i|
	puts "Creating objects #{i+1}"
	Student.create(
		first_name: "Student #{i+1}",
		last_name: 	"Lname #{i+1}",
		email: 	"student#{i+1}@gmail.com"

		)
end

Student.all.each do |student|
	student.blogs.create(title:"Dummy blog for the #{student.id}", content:"Custom content pending")
	student.blogs.create(title:"Dummy blog for the #{student.id}", content:"Custom content pending")
end

Course.create(name: "Introduction to programming", description: "Description is pending")
Course.create(name: "Ruby on Rails", description: "Description is pending")
Course.create(name: "OOP", description: "Description is pending")
Course.create(name: "Calculus", description: "Description is pending")
Course.create(name: "Compiler construction", description: "Description is pending")

