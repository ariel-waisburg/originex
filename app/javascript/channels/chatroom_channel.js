import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    // creating cable between user and channel
    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
      }
    });
  }
}

export { initChatroomCable };