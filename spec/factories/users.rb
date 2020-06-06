DEFAULT_PASSWORD = 123456

FactoryBot.define do
  factory :user do
    full_name {FFaker::Name.name}
    username {FFaker::Internet.user_name}
    email {FFaker::Internet.email}
    password {DEFAULT_PASSWORD}
    password_confirmation {DEFAULT_PASSWORD}
  end
end
