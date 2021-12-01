
const generatePhotoMarkup = (photoPath) => {
  return {markup: `<img class="song-file-image" src="${photoPath}"/>`, type: 'photo'}
}

const generateAudioMarkup = (audioPath) => {
  return {markup: `<audio controls="" autoplay="" name="media"><source src="${audioPath}" type="audio/mpeg"></audio>`, type: 'audio'}
}

const generateVideoMarkup = (videoPath) => {
  return {markup: `<video controls="" class="video-player" autoplay="" name="media"><source src="${videoPath}" type="video/mp4"></video>`, type: 'video'}
}


const generateMarkup = (songItem) => {
  console.log(songItem);

  if (songItem.querySelector('.audio-file-path')){
    const audioPath = songItem.querySelector('.audio-file-path').textContent
    return generateAudioMarkup(audioPath)
  }
  if (songItem.querySelector('.video-file-path')){
    const videoPath = songItem.querySelector('.video-file-path').textContent
    return generateVideoMarkup(videoPath)
  }
  if (songItem.querySelector('.photo-file-path')){
    const photoPath = songItem.querySelector('.photo-file-path').textContent
    return generatePhotoMarkup(photoPath)
  }
}



export const fileDisplay = () => {

  if (document.querySelector('.rehearsal-container')) {
    const fileItems = document.querySelectorAll('.inspiration-item')
    const photoVideoContainer = document.querySelector('.image-video-display')
    const audioContainer = document.querySelector('.audio-display')
    const modalBackdrop = document.querySelector('.song-file-modal-backdrop')

    modalBackdrop.addEventListener('click', () => {
      audioContainer.innerHTML = ''
      photoVideoContainer.innerHTML = ''
      audioContainer.classList.add('hidden')
      photoVideoContainer.classList.add('hidden')
      modalBackdrop.classList.add('hidden')
    })

    fileItems.forEach((item)=> {
      item.addEventListener('click', (e) => {
        const markupObj = generateMarkup(e.currentTarget);
        modalBackdrop.classList.remove('hidden')
        if (markupObj.type === 'audio') {
          audioContainer.classList.remove('hidden')
          audioContainer.innerHTML = markupObj.markup
        }
        if (markupObj.type === 'video') {
          photoVideoContainer.classList.remove('hidden')
          photoVideoContainer.innerHTML = markupObj.markup
        }
        if (markupObj.type === 'photo') {
          photoVideoContainer.classList.remove('hidden')
          photoVideoContainer.innerHTML = markupObj.markup
        }

      })
    })
  }

}
