import { submitChatMessageHandler } from "./chat";

let scrollY = 0

export const bandShowTabsHandler = () => {

  if (document.querySelector('.tablinks')) {
    function openTab(evt, tabName) {
          var i, tabcontent, tablinks;
          tabcontent = document.getElementsByClassName("tabcontent");
          for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
          }
          tablinks = document.getElementsByClassName("tablinks");
          for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
          }
          document.getElementById(tabName).style.display = "block";
          evt.currentTarget.className += " active";
        }

    const tabs = document.querySelectorAll('.tablinks');
    tabs.forEach((tab)=> {
      tab.addEventListener('click', (e)=> {
          const tabName = e.target.innerText
          openTab(e, tabName)
      })
    })


    const allTabContent = document.querySelectorAll('.tabcontent');

    const bandTab = tabs[0]
    const bandTabContent = allTabContent[0];

    const auditionsTab = tabs[1];
    const auditionsTabContent = allTabContent[1]

    const chatTab = tabs[2]
    const chatTabContent = allTabContent[2]

    const rehearsalRoomTab = tabs[3]
    const rehearsalRoomTabContent = allTabContent[3]

    const chatForm = document.querySelector('.msger-inputarea');

    const messageHistory = document.querySelector('.msg_history');
    const messageInput =  document.querySelector('.msger-input');

    tabs.forEach(tab => {
      tab.addEventListener('click', (e) => {
        window.location.hash = e.target.innerText.toLowerCase()
      })
    })

    chatTab.addEventListener('click', () => {
      //scroll to most recent chat messages
      messageHistory.scrollTop = messageHistory.scrollHeight;
    })

    new MutationObserver(() => {
      messageHistory.scrollTop = messageHistory.scrollHeight;;
    }).observe(messageHistory, { childList: true });

    chatForm.addEventListener('submit', () => {
       // set scroll window position of user on submission of chat message
      scrollY = window.scrollY;
    })

    if (window.location.href.indexOf('#chat') >= 0) {
      // if #chat is in the url display chat tab content
      chatTab.classList.add('active')
      chatTabContent.style.display = "block";

      // scroll to window position of user on submission of chat message
      window.scrollTo(0, scrollY);
      messageInput.focus()
      //scroll to bottom of chat div
      messageHistory.scrollTop = messageHistory.scrollHeight;
    }
    if (window.location.href.indexOf('#auditions') >= 1) {

    auditionsTab.classList.add('active')
    auditionsTabContent.style.display = "block";
    }
    if (window.location.href.indexOf('#auditions') >= 1) {
    auditionsTab.classList.add('active')
    auditionsTabContent.style.display = "block";
    }
    if (window.location.href.indexOf('#the%2520rehearsal%2520room') >= 1 || window.location.href.indexOf('#the%20rehearsal%20room') >= 1) {

    rehearsalRoomTab.classList.add('active')
    rehearsalRoomTabContent.style.display = "block";
    }
    if (window.location.href.indexOf('#') === -1 || window.location.href.indexOf('#band') >= 1) {
    bandTab.classList.add('active')
    bandTabContent.style.display = "block";
    }
  }

}
