//注册和登录
let formbox = document.querySelector('.formbox');   //注册
let login = document.querySelector('.login');   //注册
let logon = document.querySelector('.logon');   //登录
let welcome = document.querySelector('.welcome');

function status() {
    let uesrname = getCookie('username');
    if (uesrname) {
        login.innerHTML = '退出';
        logon.innerHTML = uesrname;
        welcome.style.display = 'block';
    } else {
        login.innerHTML = '免费注册';
        logon.innerHTML = '登录';
        welcome.style.display = 'none';
    }
}
status();

formbox.onclick = ev => {
    if (ev.target.innerHTML == '登录') {
        let skipurl = location.href;
        console.log(skipurl);
        setCookie('skipurl', skipurl, 7);
        location.href = 'html/denglu.html';
    } else if (ev.target.innerHTML == '退出') {
        setCookie('condition', '退出', 7);
        removeCookie('username');
        removeCookie('uid');
        removeCookie('skipurl');
        status();
        location.reload();
        location.href = 'html/success.html';
    } else if (ev.target.innerHTML == '免费注册') {
        setCookie('condition', '注册', 7);
        location.href = 'html/zhuce.html';
    }
}

//点击购物车
let shoppingcart = document.querySelector('.shoppingcart');
let shopcar = document.querySelector('.shopcar');
let uname = getCookie('username');

function judeg() {
    if (uname) {
        location.href = "html/shoppingcart.html";
    } else {
        location.href = "html/denglu.html";
    }
}

shoppingcart.onclick = () => {
    judeg();
}

if (shopcar) {
    shopcar.onclick = () => {
        judeg();
    }
}