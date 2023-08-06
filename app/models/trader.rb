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
class Trader < ApplicationRecord

  has_many :messages, as: :messageable

end
