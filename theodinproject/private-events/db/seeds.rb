
# create defalt user
User.create!(name: "example user", email: "example@example.com" )

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@example.com"
  User.create!(name: name, email: email)
end

users = User.take(10)
users.each do |user|
  10.times do
    name = Faker::Lorem.words(rand(1..5)).join(" ").capitalize
    description = Faker::Lorem.paragraph
    user.events_as_host.create!(name: name, description: description, event_date: Faker::Time.forward)
  end
end

users.each do |user|
  user.events_as_host.each do |event|
    event.invites.create!(user_id: User.find_by(name: "example user").id)
    10.times do |n|
      relevant_id = User.find_by(email: "example-#{n+1}@example.com").id
      event.invites.create!(reply: ["yes", "no", "none"][rand(0..2)], user_id: relevant_id)
    end
  end
end