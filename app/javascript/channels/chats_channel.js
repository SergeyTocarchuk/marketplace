import consumer from "./consumer"

consumer.subscriptions.create("ChatsChannel", {
  connected() {},

  disconnected() {},

  received(data) {
    document.getElementById('new_message').innerHTML += `<p>${data.message.content}</p>`;
  }
})
