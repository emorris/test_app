# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

random = Random.new
# 100.times do
#   person = Person.create(name: Faker::Name.name, job: Faker::Company.profession)
#   random.rand(2).times do
#     person.cats << Cat.new(
#       name: Faker::Team.creature,
#       color: Faker::Color.color_name
#     )
#   end
# end


# 1000.times do
#   User.create(name: Faker::Company.name, login: Faker::Internet.user_name)
# end
User.find_each do |user|
  random.rand(20).times do
    user.posts << Post.new(
      title: Faker::Book.title,
      body: Faker::Lorem.paragraphs,
      created_at: Faker::Date.backward(random.rand(356))
    )
  end
end

Post.find_each do |post|
  random.rand(20).times do
    post.comments << Comment.new(
      user: User.order('RANDOM()').first,
      body: Faker::Lorem.paragraph,
      created_at: Faker::Date.backward(random.rand(356))
    )
  end
end