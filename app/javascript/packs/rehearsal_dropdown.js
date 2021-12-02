export const rehearsalDropdownHandler = () => {

  if (document.querySelector('.rehearsal-form-container')) {
    const rehearsalDropdownLists = document.querySelectorAll('.rehearsal-form-dropdown')
    const rehearsalFileListButtons = document.querySelectorAll('.btn-rehearsal-dropdown')


    rehearsalFileListButtons.forEach((button) => {
      button.addEventListener('click', (e) => {
      const targetId = e.target.dataset.dropdownId
      const form = document.querySelector(`#${targetId}`)
      form.classList.toggle('hidden')

      // rehearsalDropdownList.classList.toggle('hidden')
      })
    })


    window.addEventListener('click', (e) => {
    if (!e.target.matches('.btn-rehearsal-dropdown') && !e.target.classList.contains('rehearsal-form-element')) {
      rehearsalDropdownLists.forEach((list) => {
        if (!list.classList.contains('hidden')) {
          list.classList.add('hidden')

      }
      })

    }
  })
  }
}
