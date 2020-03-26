FactoryBot.define do
  factory :post do
    user
    content { Faker::Movie.quote }
  end
end
