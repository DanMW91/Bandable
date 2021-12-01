import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static values = { bandChatId: Number, currentUserId: Number }

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "BandChatChannel", id: this.bandChatIdValue },
      {
        received: data => {
          const wrapper = document.createElement('div');
          wrapper.innerHTML = data
          const message = wrapper.firstElementChild
          const senderId = parseInt(message.dataset.senderId)
          const currentUserId = parseInt(this.currentUserIdValue)

          if (senderId !== currentUserId) {
            this.toIncoming(message)
          }

          const formattedMessage = senderId !== currentUserId 
            ? this.replaceAvatar(message)
            : message
            
          this.element.insertAdjacentElement("beforeend", formattedMessage);
        }
      }
    )
  }

  disconnect() {
    this.channel.unsubscribe()
  }

  replaceAvatar(message) {
    const avatar = message.lastElementChild
    const removedAvatar = message.removeChild(avatar)
    message.prepend(removedAvatar)
    return message
  }

  toIncoming(message) {
    message.classList.remove("outgoing_msg")
    message.classList.add("incoming_msg")

    message.lastElementChild.classList.remove("outgoing_msg_img")
    message.lastElementChild.classList.add("incoming_msg_img")

    message.firstElementChild.classList.remove("sent_msg")
    message.firstElementChild.classList.add("received_msg")
  }
}
