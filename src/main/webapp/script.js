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
const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
document.addEventListener("DOMContentLoaded", (event) => {
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
    if (registerLink != null) {
        registerLink.addEventListener('click', () => {
            wrapper.classList.add('active');
            menu.classList.remove('active');
        })
    }

    if (loginLink != null) {
        loginLink.addEventListener('click', () => {
            wrapper.classList.remove('active');
            menu.classList.remove('active');
        })
    }

    if (btnPopup != null) {
        btnPopup.addEventListener('click', () => {
            about.classList.remove('active');
            wrapper.classList.add('active-popup');
            menu.classList.remove('active');
        })
    }

    if (iconClose != null) {
        iconClose.addEventListener('click', () => {
            wrapper.classList.remove('active-popup');
        })
    }

    if (doTest != null) {
        doTest.addEventListener('click', () => {
            menu.classList.add('active');
            wrapper.classList.remove('active');
            wrapper.classList.remove('active-popup');
            about.classList.remove('active');
        })
    }

    if (iconCloseMenu != null) {
        iconCloseMenu.addEventListener('click', () => {
            menu.classList.remove('active');
        })
    }

    // iconCloseTest.addEventListener('click', ()=> {
    //     testContent.classList.remove('active');
    // })
    if (aboutUsLink != null) {
        aboutUsLink.addEventListener('click', () => {
            wrapper.classList.remove('active');
            wrapper.classList.remove('active-popup');
            menu.classList.remove('active');
            about.classList.add('active');
        })
    }

    if (iconCloseAbout != null) {
        iconCloseAbout.addEventListener('click', () => {
            about.classList.remove('active');
        })
    }

});




// validate login and password
// const loginUser = document.getElementById('reg-username');
// const passwordUser = document.getElementById('reg-password');
// const btnRegister = document.getElementById('btn-register');
// const inputEles = document.querySelectorAll('.input-row');
// btnRegister.addEventListener('click', function () {
//     Array.from(inputEles).map((ele) =>
//         ele.classList.remove('success', 'error')
//     );
//     let isValid = checkValidate();
//     if (isValid) {
//         alert('Đăng ký thành công');
//     }
// });
//
// function checkValidate() {
//     let loginUserValue = loginUser.value;
//     let passwordUserValue = passwordUser.value;
//     let isCheck = true;
//
//
//     if (!isLogin(loginUserValue)) {
//         setError(loginUser, 'Tài khoản không đúng định dạng');
//         isCheck = false;
//     } else {
//         setSuccess(loginUser);
//     }
//
//
//     if (!isPassword(passwordUserValue)) {
//         setError(passwordUser, 'Mật khẩu không đúng định dạng');
//         isCheck = false;
//     } else {
//         setSuccess(passwordUser);
//     }
//     return isCheck;
// }
//
// function setSuccess(ele) {
//     ele.parentNode.classList.add('success');
// }
//
// function setError(ele, message) {
//     let parentEle = ele.parentNode;
//     parentEle.classList.add('error');
//     parentEle.querySelector('small').innerText = message;
// }
//     function isLogin(validateLogin) {
//         return /^\w([._](?![._-])|\w){3,18}\w$/.test(validateLogin);
//     }
//
//     function isPassword(validatePassword) {
//         return /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/.test(validatePassword);
//     }
