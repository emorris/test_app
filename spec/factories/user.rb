FactoryGirl.define do
  factory :user do
    name "some name"
    login "login_zzz"
    email Faker::Internet.email
    password SecureRandom.urlsafe_base64
  end
end