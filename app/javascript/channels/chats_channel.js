import consumer from "./consumer"

consumer.subscriptions.create("ChatsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const messagesDiv = document.getElementById('messages');
    const newMessage = document.createElement('p');
    newMessage.textContent = `${data.sender}: ${data.content}`;
    messagesDiv.appendChild(newMessage);
  }
});
