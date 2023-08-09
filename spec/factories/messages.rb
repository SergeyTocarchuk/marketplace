# == Schema Information
#
# Table name: messages
#
#  id              :bigint           not null, primary key
#  content         :text
#  messagable_type :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  chat_id         :bigint           not null
#  messagable_id   :bigint           not null
#
# Indexes
#
#  index_messages_on_chat_id     (chat_id)
#  index_messages_on_messagable  (messagable_type,messagable_id)
#
# Foreign Keys
#
#  fk_rails_...  (chat_id => chats.id)
#
FactoryBot.define do
  factory :message do
    content { "MyText" }
    messagable { nil }
  end
end
