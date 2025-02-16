# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student = Student.create(
  first_name: 'Ravi',
  lastname: 'k',
  email: 'ravi@test.com'
)

20.times do |i|
  puts "Creating Student"
  Student.create(
    first_name: "Student #{i+1}",
    lastname: "Lname #{i+1}",
    email: "student#{i+1}@test.com"
  )
end