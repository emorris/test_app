FactoryGirl.define do
  factory :post do
    title "some title"
    body "some body"
    user :user
  end
end