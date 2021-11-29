export const navFadeHandler = () => {
  if (document.querySelector('.video-bg-div')) {
    const nav = document.querySelector('.navbar')
    // search = document.querySelector('.nav-power-search');
    const cards = document.querySelector('.landing-cards-container');

    window.addEventListener('scroll', (e) => {
      if (!nav.classList.contains('sticky-nav') && window.scrollY >= 665) {
        // search.classList.remove('fade-in');
        nav.classList.remove('fade-in');
        nav.classList.add('sticky-nav') ;
        nav.classList.add('hidden')
        nav.classList.add('fade-in');
        // search.classList.add('fade-in');
        nav.classList.remove('hidden')
        // search.classList.remove('hidden')
        cards.classList.add('margin-add');
      }
      if (nav.classList.contains('sticky-nav') && window.scrollY < 665) {
        nav.classList.remove('sticky-nav');
        nav.classList.remove('fade-in');
        // search.classList.add('hidden')
        cards.classList.remove('margin-add');
      }
    })
  }
}
