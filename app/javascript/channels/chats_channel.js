import consumer from "./consumer"

let chatsSubscription;
let chat_id = document.getElementById('chat_messages').dataset.chatId;
let customer_id = document.getElementById('chat_messages').dataset.customerId;

document.cookie = `customer_id=${customerId}`;

chatsSubscription = consumer.subscriptions.create(
  {
    channel: "ChatsChannel",
    chat_id: chat_id,
    customer_id: customer_id
  },
  {
  connected() {},

  disconnected() {},

  received(data) {
    document.getElementById('new_message').innerHTML += `<p>${data.message.content}</p>`;
  }
})
