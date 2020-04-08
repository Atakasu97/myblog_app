# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
time = Time.zone.now

99.times do |n|
  title = Faker::Lorem.sentence(3)
  content = Faker::Lorem.sentence(50)
  time = time + Random.rand(24*60*60)
  Micropost.create!(
    title: title,
    content: content,
    created_at: time
  )
end
