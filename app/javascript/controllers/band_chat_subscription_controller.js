import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static values = { bandChatId: Number }

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "BandChatChannel", id: this.bandChatIdValue },
      { received: data => {

        const firstReplaceData = data.replace(/outgoing/g, 'incoming');
        const finalReplaceData= firstReplaceData.replace(/sent/g, 'received')
        this.element.insertAdjacentHTML("beforeend", finalReplaceData);
        this.formatReceivedMessage()
      } }
    )

  }
  disconnect () {
  this.channel.unsubscribe()
}

formatReceivedMessage() {
  const message = this.element.lastElementChild
  const avatar = message.lastElementChild
  // const removedAvatar = this.element.removeChild(avatar)

  const removedAvatar = message.removeChild(avatar)
  message.prepend(removedAvatar)
}

}
