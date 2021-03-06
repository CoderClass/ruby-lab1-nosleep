# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do
#   Photo.create(
#   {
#     username: Faker::Name.name,
#     caption: Faker::Lorem.sentence,
#     likes_count: Faker::Number.number(5),
#     url: Faker::Avatar.image
#   })
# end

Photo.all.each do |photo|
  rand(5).times do 
  	photo.comments.create! username: Faker::Internet.user_name, body: Faker::Hispter.sentence
  end
end
