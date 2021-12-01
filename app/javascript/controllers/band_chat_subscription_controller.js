import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static values = { bandChatId: Number }

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "BandChatChannel", id: this.bandChatIdValue },
      { received: data => {

        const firstReplaceData = data.replace(/outgoing/g, 'incoming');
        const finalReplaceData = firstReplaceData.replace(/sent/g, 'received')
        const wrapper = document.createElement('div');
        wrapper.innerHTML = finalReplaceData

        const unformattedMessage = wrapper.firstElementChild


        const formattedMessage = this.formatReceivedMessage(unformattedMessage)
        console.log({formattedMessage});

        this.element.insertAdjacentElement("beforeend", formattedMessage);

      } }
    )

  }
  disconnect () {
  this.channel.unsubscribe()
}

formatReceivedMessage(message) {
  const avatar = message.lastElementChild
  // const removedAvatar = this.element.removeChild(avatar)

  const removedAvatar = message.removeChild(avatar)
  message.prepend(removedAvatar)
  return message
}

}
