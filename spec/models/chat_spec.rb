# == Schema Information
#
# Table name: chats
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  trader_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_chats_on_trader_id  (trader_id)
#  index_chats_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (trader_id => traders.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Chat, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
