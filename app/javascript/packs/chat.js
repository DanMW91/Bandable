export const submitChatMessageHandler = () => {
  if (document.querySelector('.msg_history')) {
    const messageWindow = document.querySelector('.msg_history')
    new MutationObserver(() => {
      messageWindow.lastElementChild.classList.add('hidden')
    }).observe(messageWindow, { childList: true });

  }
}
