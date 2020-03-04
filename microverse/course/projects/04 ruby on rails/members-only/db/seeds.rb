# create default user
User.create!(name:  'Default User', email: 'default@user.org', password: '123456', password_confirmation: '123456')

# create other users
99.times do |n|
  name  = Faker::Name.name
  email = Faker::Internet.email
  password = "passwd"
  User.create!(name:  name, email: email, password: password, password_confirmation: password)
end

# create posts
User.all.each { |user| Post.create title: Faker::Book.title, body: Faker::Lorem.paragraph, user: user }
