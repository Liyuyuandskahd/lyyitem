let username = document.querySelector('.username');
let password = document.querySelector('.password');
let yzm = document.querySelector('.yzm');
let yzmcont = document.querySelector('.yzm-img');
let sure = document.querySelector('.sure');

function emptyval(ele) {
    ele.onfocus = () => {
        ele.placeholder = '';
    }
}

emptyval(username);
emptyval(password);
emptyval(yzm);

//随机验证码
let sth = code(yzmcont);
setColor(4, 16, yzmcont.children);
yzmcont.onclick = () => {
    sth = code(yzmcont);
    setColor(4, 16, yzmcont.children);
}

sure.onclick = () => {
    setCookie('condition', '登录', 7);
    var val1 = username.value.trim();
    var val2 = password.value.trim();
    var val3 = yzm.value.trim();

    if (val1 && val2 && val3) {
        var conent = yzm.value.trim();
        if (conent.toLocaleLowerCase() == sth.toLocaleLowerCase()) {    //判断不区分大小写
            // alert('验证成功，正在跳转...');
            ajax({
                type: 'post',
                url: '../api/enter/index.php',
                data: {
                    a: 'logonName',
                    username: username.value.trim(),
                    password: password.value.trim()
                },
                success: res => {
                    console.log(res);
                    logonwin(res);
                }
            });
            let uname = username.value.trim();
            setCookie('username', uname, 7);

        } else {
            alert('验证码错误，请重新输入');
            //验证失败时生成一个随机的四位数
            sth = code(yzmcont);
            setColor(4, 16, yzmcont.children);
            yzm.value = '';//清空输入框
            yzm.focus();
        }
    } else if (!val1) {
        alert('请输入用户名');
    } else if (!val2) {
        alert('请输入密码');
    } else if (!val3) {
        alert('请输入验证码');
    }
}

function logonwin(res) {
    let obj = JSON.parse(res);
    if (!obj.code) {
        //登录成功
        ajax({
            type: 'post',
            url: '../api/enter/index.php',
            data: {
                a: 'getuserid',
                username: username.value.trim()
            },
            success: str => {
                // console.log(str);
                let arr = JSON.parse(str);
                let uid = arr[0].id;
                setCookie('uid', uid, 7);
                password.value = '';
                yzm.value = '';
                location.href = 'success.html';
            }
        })
    } else {
        //登录失败
        alert('密码错误');
        password.value = '';
        password.focus();
    }
}

//回到顶部
$('.gotop').click(function () {
    $('html , body').animate({ scrollTop: 0 }, 'swing');
});