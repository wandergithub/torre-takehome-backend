# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# create some strengths
strength = []
strength << Strength.create(name: "Communication", proficiency: "no-experience-interested", recommendations: 10)
strength << Strength.create(name: "Teamwork", proficiency: "beginner", recommendations: 7)
strength << Strength.create(name: "Problem Solving", proficiency: "beginner", recommendations: 5)
strength << Strength.create(name: "Adaptability", proficiency: "advanced", recommendations: 8)
strength << Strength.create(name: "Leadership", proficiency: "master", recommendations: 12)
strength << Strength.create(name: "Creativity", proficiency: "proficient", recommendations: 4)
strength << Strength.create(name: "Critical Thinking", proficiency: "expert", recommendations: 6)
strength << Strength.create(name: "Time Management", proficiency: "advanced", recommendations: 9)
strength << Strength.create(name: "Analytical Thinking", proficiency: "master", recommendations: 11)
strength << Strength.create(name: "Attention to Detail", proficiency: "proficient", recommendations: 3)
strength << Strength.create(name: "Negotiation", proficiency: "beginner", recommendations: 5)
strength << Strength.create(name: "Presentation", proficiency: "proficient", recommendations: 8)
strength << Strength.create(name: "Conflict Resolution", proficiency: "advanced", recommendations: 11)
strength << Strength.create(name: "Decision Making", proficiency: "expert", recommendations: 7)
strength << Strength.create(name: "Innovation", proficiency: "master", recommendations: 12)
strength << Strength.create(name: "Emotional Intelligence", proficiency: "proficient", recommendations: 6)
strength << Strength.create(name: "Sales", proficiency: "beginner", recommendations: 4)
strength << Strength.create(name: "Project Management", proficiency: "advanced", recommendations: 10)
strength << Strength.create(name: "Risk Management", proficiency: "expert", recommendations: 9)
strength << Strength.create(name: "Collaboration", proficiency: "master", recommendations: 12)

# create some experiences
exp1 = Experience.create(name: "Software Developer", organization: "Acme Corp", from_month: "January", from_year: 2019)
exp2 = Experience.create(name: "Product Manager", organization: "Globex Corp", from_month: "June", from_year: 2015)
exp3 = Experience.create(name: "Marketing Manager", organization: "Soylent Corp", from_month: "August", from_year: 2012)
exp4 = Experience.create(name: "Sales Representative", organization: "XYZ Corp", from_month: "May", from_year: 2018)
exp5 = Experience.create(name: "Financial Analyst", organization: "ABC Corp", from_month: "September", from_year: 2013)
exp6 = Experience.create(name: "Human Resources Coordinator", organization: "123 Corp", from_month: "April", from_year: 2010)
exp7 = Experience.create(name: "Software Engineer", organization: "Beta Corp", from_month: "March", from_year: 2020)
exp8 = Experience.create(name: "Project Manager", organization: "Delta Corp", from_month: "July", from_year: 2017)
exp9 = Experience.create(name: "Customer Service Representative", organization: "Gamma Corp", from_month: "December", from_year: 2014)
exp10 = Experience.create(name: "Operations Manager", organization: "Theta Corp", from_month: "October", from_year: 2011)

# create some users
user1 = User.create(name: "John Doe", picture: "https://res.cloudinary.com/torre-technologies-co/image/upload/v1680179434/origin/starrgate/users/profile_c526cc7cd8f2dfb673cf66ab5fd382e84539f032.jpg", experiences: [exp1, exp3])
user2 = User.create(name: "Jane Smith", picture: "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg", experiences: [exp2, exp7])
user3 = User.create(name: "Mark Johnson", picture: "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg", experiences: [exp4, exp8])
user4 = User.create(name: "Emily Rodriguez", picture: "https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg", experiences: [exp5, exp9])
user5 = User.create(name: "Michael Lee", picture: "https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg", experiences: [exp6, exp10])


# associate strengths with users
users = [user1, user2, user3, user4, user5]

users.each do |user|
    # shuffle the strengths array to get a random order
    shuffled_strengths = strength.shuffle
    # take the first 10 random strengths
    random_strengths = shuffled_strengths.take(10)
    # associate the random strengths with the user
    random_strengths.each do |strength|
      user.strengths << strength
    end
  end