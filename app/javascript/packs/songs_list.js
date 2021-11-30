export const songsListTabs = () => {
  if (document.querySelector('.rehearsal-container')) {

    const songItems = document.querySelectorAll('.song-item');



    const openSong = (songName) => {

          const songContents = document.querySelectorAll(".song-content");
          songContents.forEach((content) => {
            content.classList.add('hidden');
          })
          document.getElementById(songName + '-song').classList.remove('hidden');
        }


    songItems.forEach((song)=> {
      song.addEventListener('click', (e)=> {

          const tabName = e.currentTarget.firstElementChild.innerText.split(' ').join('-');
          openSong(tabName)
      })
    })
  }
}
