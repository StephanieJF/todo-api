require 'faker'

20.times do
  User.create!(
          username: Faker::Internet.username,
          password: Faker::Internet.password(5, 8)
  )
end

users = User.all

40.times do
  List.create!(
          user: users.sample,
          title: Faker::Lorem.sentence
  )
end

lists = List.all

60.times do
  Item.create!(
          list: lists.sample,
          body: Faker::Lorem.sentence
  )
end

puts "Seeds finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"