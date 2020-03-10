
# create defalt user
User.create!(name: "example user", email: "example@example.com")

49.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@example.com"
  User.create!(name: name, email: email)
end

# create events
# please refactor this
users = User.take(5)
users.each do |user|
  1.times do
    name = Faker::Lorem.words(rand(1..5)).join(" ")
    description = Faker::Lorem.paragraph
    user.events_as_host.create!(name: name, description: description, event_date: Faker::Time.forward)
  end
  1.times do
    name = Faker::Lorem.words(rand(1..5)).join(" ")
    description = Faker::Lorem.paragraph
    user.events_as_host.create!(name: name, description: description, event_date: Faker::Time.backward)
  end
end

# create invites
users.each do |user|
  user.events_as_host.each do |event|
    event.invites.create!(user_id: User.find_by(name: "example user").id)
    2.times do |n|
      relevant_id = User.find_by(email: "example-#{n+1}@example.com").id
      event.invites.create!(reply: ["yes", "no", "none"][rand(0..2)], user_id: relevant_id)
    end
  end
end