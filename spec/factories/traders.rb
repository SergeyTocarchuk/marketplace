# == Schema Information
#
# Table name: traders
#
#  id         :bigint           not null, primary key
#  email      :string
#  first_name :string
#  last_name  :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :trader do
    email       { Faker::Internet.email }
    phone       { Faker::PhoneNumber.phone_number }
    first_name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name }
  end
end
