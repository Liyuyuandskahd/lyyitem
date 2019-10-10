// //侧栏菜单
// let sidebarmenu = document.querySelector('.sidebar-menu');
// sidebarmenu.style.top = (window.innerHeight - sidebarmenu.offsetHeight) / 2 + 'px';

//跳转主页
let mainpage = document.querySelector('.main-page');
mainpage.onclick = () => {
    location.href = 'swt.html';
}

//跳转列表页
let listpage = document.querySelector('.list-page');
listpage.onclick = () => {
    location.href = 'liebiaoye.html';
}

//点击切换搜索商品或店铺
let category = document.querySelector('.category');
let searchmold = document.querySelector('.search-mold');

category.onclick = () => {
    searchmold.style.display = 'block';
    // ev.stopPropagation();
}

searchmold.onclick = (ev) => {
    if (ev.target.tagName == 'LI') {
        ev.target.parentNode.style.display = 'none';
        category.innerText = ev.target.innerText;
    }
    ev.stopPropagation();
}

//导航菜单
let sidebarcont = document.querySelector('.sidebar-cont');
let listcont = document.querySelectorAll('.keyword-list-cont');

for (let i = 0; i < sidebarcont.children.length; i++) {
    sidebarcont.children[i].onmouseover = () => {
        for (let j = 0; j < listcont.length; j++) {
            listcont[j].style.display = 'none';
        }
        listcont[i].style.display = 'block';
    }
}

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
    } else if (ev.target.innerHTML == '退出') {
        setCookie('condition', '退出', 7);
        removeCookie('username');
        removeCookie('uid');
        removeCookie('skipurl');
        status();
        location.reload();
        location.href = 'success.html';
    } else if (ev.target.innerHTML == '免费注册') {
        setCookie('condition', '注册', 7);
        location.href = 'zhuce.html';
    }
}

//回到顶部
$('.gotop').click(function () {
    $('html , body').animate({ scrollTop: 0 }, 'swing');
});

//点击购物车
let shoppingcart = document.querySelector('.shoppingcart');
let shopcar = document.querySelector('.shopcar');
let uname = getCookie('username');

function judeg() {
    if (uname) {
        location.href = "shoppingcart.html";
    } else {
        location.href = "denglu.html";
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