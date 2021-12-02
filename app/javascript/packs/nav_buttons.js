export const navButtonsHandler = () => {
  const auditionDropdownList = document.querySelector('.audition-dropdown-list');
  const bandDropdownList = document.querySelector('.band-dropdown-list')

  window.addEventListener('click', (e) => {
    console.log('why')
    if (!e.target.matches('.btn-audition-dropdown')) {
      if (!auditionDropdownList.classList.contains('hidden')) {
        auditionDropdownList.classList.add('hidden')
      }
    }
    if (!e.target.matches('.btn-band-dropdown')) {
      if (!bandDropdownList.classList.contains('hidden')) {
        bandDropdownList.classList.add('hidden')
      }
    }
  });

  if (document.querySelector('.band-dropdown-container')) {
    const bandButton = document.querySelector('.btn-band-dropdown ');
    const bandDropdownList = document.querySelector('.band-dropdown-list ');

    bandButton.addEventListener('click', () => {
      bandDropdownList.classList.toggle('hidden')
    })
  }

  if (document.querySelector('.audition-dropdown-container')) {
    const auditionButton = document.querySelector('.btn-audition-dropdown ');
    const auditionDropdownList = document.querySelector('.audition-dropdown-list ');

    auditionButton.addEventListener('click', () => {
      auditionDropdownList.classList.toggle('hidden')
    })
  }
}
