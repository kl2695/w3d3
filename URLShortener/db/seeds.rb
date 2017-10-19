# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kevin = User.create!(email: "gmail")
francis = User.create!(email: "hotmail")
dylan = User.create(email: "dylan@gmail.com")
michael = User.create(email: "halo3552@yahoo.com")

s1 = ShortenedUrl.make(kevin, "facebook.com")
s2 = ShortenedUrl.make(francis, "hotmail.com")
s3 = ShortenedUrl.make(kevin, "appacademy.io")
s4 = ShortenedUrl.make(francis, "reddit.com")

Visit.record_visit!(kevin, s2)
Visit.record_visit!(francis, s2)
Visit.record_visit!(kevin,s1)
Visit.record_visit!(michael, s2)
Visit.record_visit!(michael,s4)
Visit.record_visit!(dylan, s3)
