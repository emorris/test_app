FactoryGirl.define do
  factory :item do
    name Faker::Lorem.word
    price Faker::Commerce.price
  end
end