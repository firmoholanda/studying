# create default user
#User.create!(name: "firmo holanda", email: "firmo@viize.com")

#4.times do |n|
#  name = Faker::Name.name
#  email = "example-#{n+1}@example.com"
#  User.create!(name: name, email: email)
#end

# create groups
#Group.create!(name: "computer science 101", icon: "android", user_id: 1)
#Group.create!(name: "math 102", icon: "area-chart", user_id: 1)
#Group.create!(name: "wash 103", icon: "bathtub", user_id: 1)
#Group.create!(name: "bday 104", icon: "birthday-cake", user_id: 1)
#Group.create!(name: "auto 105", icon: "automobile", user_id: 1)

# create projects
groups = Group.take(10)
users = User.take(5)
users.each do |user|
  2.times do |n|
    name = Faker::Lorem.words(rand(1..10)).join(" ")
    hours = rand(1..100)
    author_id = user.id
    groups.each do |group|
      user.project[group_ids] = rand(group.id)
    end

    Project.create!(name: name, hours: hours, author_id: author_id, group_ids: group_ids)
  end
end