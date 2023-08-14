import consumer from "./consumer"

let chatsSubscription;

chatsSubscription = consumer.subscriptions.create("ChatsChannel", {
  connected() {},

  disconnected() {},

  received(data) {
    document.getElementById('new_message').innerHTML += `<p>${data.message.content}</p>`;
  }
})

window.addEventListener("beforeunload", function () {
  consumer.subscriptions.remove(chatsSubscription);
});
