/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/band_show_tabs.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/band_show_tabs.js":
/*!************************************************!*\
  !*** ./app/javascript/packs/band_show_tabs.js ***!
  \************************************************/
/*! exports provided: bandShowTabsHandler */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "bandShowTabsHandler", function() { return bandShowTabsHandler; });
/* harmony import */ var _chat__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./chat */ "./app/javascript/packs/chat.js");

var scrollY = 0;
var bandShowTabsHandler = function bandShowTabsHandler() {
  if (document.querySelector('.tablinks')) {
    var openTab = function openTab(evt, tabName) {
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
    };

    var tabs = document.querySelectorAll('.tablinks');
    tabs.forEach(function (tab) {
      tab.addEventListener('click', function (e) {
        var tabName = e.target.innerText;
        openTab(e, tabName);
      });
    });
    var allTabContent = document.querySelectorAll('.tabcontent');
    var bandTab = tabs[0];
    var bandTabContent = allTabContent[0];
    var auditionsTab = tabs[1];
    var auditionsTabContent = allTabContent[1];
    var chatTab = tabs[2];
    var chatTabContent = allTabContent[2];
    var rehearsalRoomTab = tabs[3];
    var rehearsalRoomTabContent = allTabContent[3];
    var chatForm = document.querySelector('.msger-inputarea');
    var messageHistory = document.querySelector('.msg_history');
    var messageInput = document.querySelector('.msger-input');
    tabs.forEach(function (tab) {
      tab.addEventListener('click', function (e) {
        window.location.hash = e.target.innerText.toLowerCase();
      });
    });
    chatTab.addEventListener('click', function () {
      //scroll to most recent chat messages
      messageHistory.scrollTop = messageHistory.scrollHeight;
    });
    new MutationObserver(function () {
      messageHistory.scrollTop = messageHistory.scrollHeight;
      ;
    }).observe(messageHistory, {
      childList: true
    });
    chatForm.addEventListener('submit', function () {
      // set scroll window position of user on submission of chat message
      scrollY = window.scrollY;
    });

    if (window.location.href.indexOf('#chat') >= 0) {
      // if #chat is in the url display chat tab content
      chatTab.classList.add('active');
      chatTabContent.style.display = "block"; // scroll to window position of user on submission of chat message

      window.scrollTo(0, scrollY);
      messageInput.focus(); //scroll to bottom of chat div

      messageHistory.scrollTop = messageHistory.scrollHeight;
    }

    if (window.location.href.indexOf('#auditions') >= 1) {
      auditionsTab.classList.add('active');
      auditionsTabContent.style.display = "block";
    }

    if (window.location.href.indexOf('#auditions') >= 1) {
      auditionsTab.classList.add('active');
      auditionsTabContent.style.display = "block";
    }

    if (window.location.href.indexOf('#') === -1 || window.location.href.indexOf('#band') >= 1) {
      bandTab.classList.add('active');
      bandTabContent.style.display = "block";
    }
  }
};

/***/ }),

/***/ "./app/javascript/packs/chat.js":
/*!**************************************!*\
  !*** ./app/javascript/packs/chat.js ***!
  \**************************************/
/*! exports provided: submitChatMessageHandler */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "submitChatMessageHandler", function() { return submitChatMessageHandler; });
var submitChatMessageHandler = function submitChatMessageHandler() {
  var isChat = window.location.href.indexOf('#chat');
  console.log(isChat);
};

/***/ })

/******/ });
//# sourceMappingURL=band_show_tabs-52d804a33061d6b115fa.js.map