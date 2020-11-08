FactoryBot.define do
  factory :user do
    nickname               { Faker::Name.initials(number: 2)}
    email                  { Faker::Internet.free_email}
    password               { 'a00000'}
    password_confirmation  { password}
    birthday               { Faker::Date.between(from: '1980-01-01', to: '2020-12-31')}
  end
end