
let smoothScroll = false

export const searchScroll = () => {
  if (document.querySelector('.video-bg-div')) {
    console.log(smoothScroll)
    const navSearch = document.querySelector('.nav-search-input')
      navSearch.addEventListener('click', () => {
        console.log(smoothScroll);
        smoothScroll = false
      })


    if (window.location.href.indexOf('query')>=1) {
      const header = document.querySelector('.card-container-title')

      if (smoothScroll) {
        window.scrollTo({top: 961, left: 0, behavior: 'smooth'})
        header.innerHTML = '<h1>Results:</h1>'
        }
      if (!smoothScroll) {
        window.scrollTo({top: 961, left: 0})
        header.innerHTML = '<h1>Results:</h1>'
      }
    }
  }
}
