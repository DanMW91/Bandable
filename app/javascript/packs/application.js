// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "controllers"
import "bootstrap"

document.addEventListener('turbolinks:load', () => {


  // TABS ON BAND PAGE

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

    const bandContent = document.querySelector('.tabcontent')
    const bandTab = tabs[0]
    bandTab.classList.add('active')
    bandContent.style.display = "block";
  }

  // DROPDOWN STUFFS
  const auditionDropdownList = document.querySelector('.audition-dropdown-list');
  const bandDropdownList = document.querySelector('.band-dropdown-list')

  window.addEventListener('click', (e) => {
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

});
