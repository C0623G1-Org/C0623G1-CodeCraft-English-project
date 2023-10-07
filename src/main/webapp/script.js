var testContent;
var menu;
var iconCloseTest;
var aboutUsLink;
var iconCloseAbout;
var about;
var wrapper;
var loginLink;
var registerLink;
var btnPopup;
var iconClose;
var iconCloseMenu;
var doTest;
var userMenu;
var user;

// function onBeginTest(diffId) {
//     testContent.classList.add('active');
//     menu.classList.remove('active');
// }
// function closeTest() {
//     testContent.classList.remove('active');
// }
// function showAbout() {
//     about.classList.add('active');
// }

// document.addEventListener("DOMContentLoaded", (event) => {
    wrapper = document.querySelector('.wrapper');
    loginLink = document.querySelector('.login-link');
    registerLink = document.querySelector('.register-link');
    btnPopup = document.querySelector('.btnLogin-popup');
    iconClose = document.querySelector('.icon-close');
    iconCloseMenu = document.querySelector('.icon-close-menu');
    doTest = document.querySelector('.doTest');
    about = document.querySelector('.about');
    iconCloseAbout = document.querySelector('.icon-close-about');
    aboutUsLink = document.querySelector('.aboutUs');
    menu = document.querySelector('.menu');
    iconCloseTest = document.querySelector('.icon-close-test');
    testContent = document.getElementById('test-content');
    user = document.querySelector('.user');
    userMenu = document.querySelector('.user-menu');

    // user.addEventListener('click', ()=> {
    //     let count = 0;
    //     if (count === 0) {
    //         userMenu.classList.add('active');
    //         count = 1;
    //     } else {
    //         userMenu.classList.remove('active');
    //         count = 0;
    //     }
    // })

    registerLink.addEventListener('click', ()=> {
        wrapper.classList.add('active');
        menu.classList.remove('active');
    })

    loginLink.addEventListener('click', ()=> {
        wrapper.classList.remove('active');
        menu.classList.remove('active');
    })

    btnPopup.addEventListener('click', ()=> {
        about.classList.remove('active');
        wrapper.classList.add('active-popup');
        menu.classList.remove('active');
    })

    iconClose.addEventListener('click', ()=> {
        wrapper.classList.remove('active-popup');
    })

    doTest.addEventListener('click', ()=> {
        menu.classList.add('active');
        wrapper.classList.remove('active');
        wrapper.classList.remove('active-popup');
        about.classList.remove('active');
    })

    iconCloseMenu.addEventListener('click', ()=> {
        menu.classList.remove('active');
    })

    // iconCloseTest.addEventListener('click', ()=> {
    //     testContent.classList.remove('active');
    // })

    aboutUsLink.addEventListener('click', ()=> {
        wrapper.classList.remove('active');
        wrapper.classList.remove('active-popup');
        menu.classList.remove('active');
        about.classList.add('active');
    })

    iconCloseAbout.addEventListener('click', ()=> {
        about.classList.remove('active');
    })

// });


