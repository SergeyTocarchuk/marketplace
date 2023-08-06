# == Schema Information
#
# Table name: messages
#
#  id              :bigint           not null, primary key
#  content         :text
#  messagable_type :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  messagable_id   :bigint           not null
#
# Indexes
#
#  index_messages_on_messagable  (messagable_type,messagable_id)
#
class Message < ApplicationRecord

  belongs_to :messagable, polymorphic: true

end
