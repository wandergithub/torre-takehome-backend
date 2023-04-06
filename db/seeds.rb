# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create some strengths
s1 = Strength.create(name: "Communication", proficiency: "Expert", recomendations: 10)
s2 = Strength.create(name: "Leadership", proficiency: "Intermediate", recomendations: 5)
s3 = Strength.create(name: "Problem-solving", proficiency: "Advanced", recomendations: 7)

# Create some users
u1 = User.create(name: "John Doe", picture: "https://example.com/picture1.jpg")
u2 = User.create(name: "Jane Smith", picture: "https://example.com/picture2.jpg")

# Associate users with their strengths
u1.strengths << s1
u1.strengths << s2
u2.strengths << s2
u2.strengths << s3

# Create some experiences
e1 = Experience.create(name: "Software Engineer", organization: "Acme Inc.", fromMonth: "January", fromYear: 2019, user: u1)
e2 = Experience.create(name: "Marketing Manager", organization: "Globex Corp.", fromMonth: "June", fromYear: 2015, user: u2)
