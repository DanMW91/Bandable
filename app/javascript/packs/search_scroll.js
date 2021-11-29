export const searchScroll = () => {
  if (document.querySelector('.video-bg-div')) {
    if (window.location.href.indexOf('query')>=1) {
    window.scrollTo({top: 961, left: 0, behavior: 'smooth'})
    const header = document.querySelector('.card-container-header')
    header.innerHTML = '<h1>Results:</h1>'
    }
  }
}
