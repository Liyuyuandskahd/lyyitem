let uname = document.querySelector('.username');
let namehint = document.querySelector('.name-hint');
let password = document.querySelector('.password');
let passwordhint = document.querySelector('.password-hint');
let surepassword = document.querySelector('.surepassword');
let surepasswordhint = document.querySelector('.surepassword-hint');
let deal = document.querySelector('.deal');
let sure = document.querySelector('.sure');
let yzm = document.querySelector('.yzm');
var istrue1 = false;
var istrue2 = false;
var istrue3 = false;

function checkInput1(opt) {
    opt.ele.onfocus = () => {
        opt.ele.placeholder = '';
    }

    opt.ele.onblur = function () {
        var val = this.value.trim();
        if (val) {
            var str = `checkReg.${opt.type}(val)`;//eval() 把字符串转成js代码
            var isok = eval(str);
            if (isok) {
                //正则验证通过
                opt.inf.className = opt.classname + ' iconfont icon-zhengque1';
                opt.ele.style.borderColor = '#ebebeb';
                opt.inf.style.color = '#58bc58';
                istrue1 = true;
            } else {
                opt.inf.className = opt.classname + ' iconfont icon-cuowu1';
                opt.ele.style.borderColor = 'red';
                opt.inf.style.color = 'red';
                istrue1 = false;
            }

        } else {
            opt.inf.className = opt.classname + ' iconfont icon-cuowu1';
            opt.ele.style.borderColor = 'red';
            opt.inf.style.color = 'red';
        }

    }
}

function checkInput2(opt) {
    opt.ele.onfocus = () => {
        opt.ele.placeholder = '';
    }

    opt.ele.onblur = function () {
        var val = this.value.trim();
        if (val) {
            var str = `checkReg.${opt.type}(val)`;//eval() 把字符串转成js代码
            var isok = eval(str);
            if (isok) {
                //正则验证通过
                opt.inf.className = opt.classname + ' iconfont icon-zhengque1';
                opt.ele.style.borderColor = '#ebebeb';
                opt.inf.style.color = '#58bc58';
                istrue2 = true;
            } else {
                opt.inf.className = opt.classname + ' iconfont icon-cuowu1';
                opt.ele.style.borderColor = 'red';
                opt.inf.style.color = 'red';
                istrue2 = false;
            }
        } else {
            opt.inf.className = opt.classname + ' iconfont icon-cuowu1';
            opt.ele.style.borderColor = 'red';
            opt.inf.style.color = 'red';
        }
    }
}

function checkInput3(opt) {
    opt.ele.onfocus = () => {
        opt.ele.placeholder = '';
    }

    opt.ele.onblur = function () {
        var val = this.value.trim();
        var val2 = password.value.trim();
        if (val) {
            var str = `checkReg.${opt.type}(val,val2)`;//eval() 把字符串转成js代码
            var isok = eval(str);
            if (isok) {
                //正则验证通过
                opt.inf.className = opt.classname + ' iconfont icon-zhengque1';
                opt.ele.style.borderColor = '#ebebeb';
                opt.inf.style.color = '#58bc58';
                istrue3 = true;
            } else {
                opt.inf.className = opt.classname + ' iconfont icon-cuowu1';
                opt.ele.style.borderColor = 'red';
                opt.inf.style.color = 'red';
                istrue3 = false;
            }
        } else {
            opt.inf.className = opt.classname + ' iconfont icon-cuowu1';
            opt.ele.style.borderColor = 'red';
            opt.inf.style.color = 'red';
        }
    }
}

checkInput1({
    ele: uname,
    inf: namehint,
    classname: 'name-hint',
    type: 'name',
});

checkInput2({
    ele: password,
    inf: passwordhint,
    classname: 'password-hint',
    type: 'password',
});

checkInput3({
    ele: surepassword,
    inf: surepasswordhint,
    classname: 'surepassword-hint',
    type: 'pwwagain',
});

yzm.onfocus = () => {
    yzm.placeholder = '';
}

//随机验证码
let yzmcont = document.querySelector('.yzm-img');
let sth = code(yzmcont);
setColor(4, 16, yzmcont.children);
yzmcont.onclick = () => {
    sth = code(yzmcont);
    setColor(4, 16, yzmcont.children);
}



sure.onclick = () => {

    if (istrue1 && istrue2 && istrue3 && deal.checked) {
        var conent = yzm.value.trim();
        if (conent.toLocaleLowerCase() == sth.toLocaleLowerCase()) {    //判断不区分大小写
            // alert('验证成功，正在跳转...');
            ajax({
                type: 'get',
                url: '../api/enter/index.php',
                data: {
                    a: 'verifyUserName',
                    username: uname.value.trim()
                },
                success: res => {
                    saveuser(res);
                }
            })

        } else {
            alert('验证码错误，请重新输入');
            //验证失败时生成一个随机的四位数
            sth = code(yzmcont);
            setColor(4, 16, yzmcont.children);
            yzm.value = '';//清空输入框
            yzm.focus();
        }
    } else if (!uname.value.trim()) {
        alert('请输入用户名');
    } else if (!password.value.trim()) {
        alert('请输入密码');
    } else if (!surepassword.value.trim()) {
        alert('请再次输入密码');
    } else if (!yzm.value.trim()) {
        alert('请输入验证码');
    } else if (!deal.checked) {
        alert('请勾选用户协议');
    }
}

function saveuser(res) {
    let obj = JSON.parse(res);
    if (!obj.code) {
        //验证用户无误
        ajax({
            type: 'post',
            url: '../api/enter/index.php',
            data: {
                a: 'loginName',
                username: uname.value.trim(),
                password: password.value.trim()
            },
            success: str => {
                let obj2 = JSON.parse(str);
                if (!obj2.code) {
                    //注册成功
                    setCookie('condition', '注册', 7);
                    uname.value = '';
                    password.value = '';
                    surepassword.value = '';
                    yzm.value = '';
                    deal.checked = false;
                    location.href = 'success.html';
                } else {
                    //注册失败
                }
            }
        })
    } else {
        //用户名已存在
        alert('用户名已存在');
        uname.value = '';
        uname.focus();
    }
}

//回到顶部
$('.gotop').click(function () {
    $('html , body').animate({ scrollTop: 0 }, 'swing');
});