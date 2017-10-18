# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kevin = User.create!(name:"kevin")
francis = User.create!(name:"francis")

calc1 = Course.create!(name:"calc1", instructor_id:francis.id)
calc2 = Course.create!(name:"calc2",prereq_id:calc1.id)



 e = Enrollment.create!(user_id:kevin.id, course_id:calc1.id)
e2 = Enrollment.create!(user_id:kevin.id, course_id:calc2.id)
