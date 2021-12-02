

export const songsListTabs = () => {
  if (document.querySelector('.rehearsal-container')) {
    const tabs = document.querySelectorAll('.tablinks');
    const allTabContent = document.querySelectorAll('.tabcontent');
    const rehearsalRoomTab = tabs[3]
    const rehearsalRoomTabContent = allTabContent[3]

    const songItems = document.querySelectorAll('.song-item');

    const openSong = (songName) => {
      const songContents = document.querySelectorAll(".song-content");
      songContents.forEach((content) => {
        content.classList.add('hidden');
      })
      document.getElementById(songName.toLowerCase() + '-song').classList.remove('hidden');
    }
    songItems.forEach((song)=> {
      song.addEventListener('click', (e)=> {
          const tabName = e.currentTarget.firstElementChild.innerText.toLowerCase().split(' ').join('-');
          window.location.hash =  tabName + '-song'
          openSong(tabName)
      })
    })
    if (window.location.href.indexOf('song') >= 1) {

    const songTab = document.getElementById(`${window.location.href.split('#')[1]}`);
    console.log(songTab);
    songTab.classList.remove('hidden');
    rehearsalRoomTab.classList.add('active')
    rehearsalRoomTabContent.style.display = "block";
    }
  }


}
