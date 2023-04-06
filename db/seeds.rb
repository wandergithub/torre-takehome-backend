# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create some strengths
strength1 = Strength.create(name: "Communication", proficiency: "Expert", recommendations: 10)
strength2 = Strength.create(name: "Teamwork", proficiency: "Advanced", recommendations: 7)
strength3 = Strength.create(name: "Problem Solving", proficiency: "Intermediate", recommendations: 5)

# create some experiences
exp1 = Experience.create(name: "Software Developer", organization: "Acme Corp", from_month: "January", from_year: 2019)
exp2 = Experience.create(name: "Product Manager", organization: "Globex Corp", from_month: "June", from_year: 2015)
exp3 = Experience.create(name: "Marketing Manager", organization: "Soylent Corp", from_month: "August", from_year: 2012)

# create some users
user1 = User.create(name: "John Doe", picture: "https://example.com/john-doe.jpg", experiences: [exp1])
user2 = User.create(name: "Jane Smith", picture: "https://example.com/jane-smith.jpg", experiences: [exp2])

# associate some strengths with users
user1.strengths << strength1
user1.strengths << strength2
user2.strengths << strength3
