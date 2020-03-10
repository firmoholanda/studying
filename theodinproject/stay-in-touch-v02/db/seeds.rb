
# create default user
User.create!(name:  "example user", email: "example@example.com", password: "abcd1234", password_confirmation: "abcd1234")

# create other users
99.times do |n|
  name  = Faker::Name.name[0..20]
  email = Faker::Internet.email
  password = "passwd"
  User.create!(name:  name, email: email, password: password, password_confirmation: password)
end

# create posts
User.all.each { |user| Post.create content: Faker::Lorem.paragraph, user: user }