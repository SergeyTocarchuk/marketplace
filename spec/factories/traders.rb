# == Schema Information
#
# Table name: traders
#
#  id                     :bigint           not null, primary key
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  phone                  :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_traders_on_email                 (email) UNIQUE
#  index_traders_on_reset_password_token  (reset_password_token) UNIQUE
#
FactoryBot.define do
  factory :trader do
    email       { Faker::Internet.email }
    phone       { Faker::PhoneNumber.phone_number }
    first_name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name }
  end
end
