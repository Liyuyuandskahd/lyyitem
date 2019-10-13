/* 
    * @Author: Snake
    * @Date: 2019-08-16 08:41:49
    * @LastEditTime: 2019-08-19 19:22:16
    * @Description: 生成4位数随机验证码 ：4位随机数 0-9之间的数字加大小写字母，取n个拼接,保存到Sname中,返回拼接的字符串
*/

function code(Sname) {
    var str = 'zxcvbnmasdfghjklqwertyuiopZXCVBNMASDFGHJKLQWERTYUIOP1234567890';
    var html = '';
    var sth = '';
    for (i = 0; i < 4; i++) {
        var pi = parseInt(Math.random() * str.length);
        var sum = '<span class="list">' + str[pi] + '</span>';//给每一个数字设置一个className，方便设置样式
        html += sum;
        sth += str[pi];
    }
    Sname.innerHTML = html;
    return sth; //返回n位验证码，用来判断
}

//--------------------------------------------------------------------------------------------------------

/* 
    * @Author: Snake
    * @Date: 2019-08-16 08:41:49
    * @LastEditTime: 2019-08-19 19:22:16
    * @Description: 生成随机颜色
*/

function randomColor(type) {
    var color = '';
    if (type == 16) {
        var num = '1234567890abcdef';
        color += '#';
        for (var i = 0; i < 6; i++) {
            var mo = parseInt(Math.random() * num.length);//0-length-1之间随意整数
            color += num[mo];
        }

    } else if (type == 'rgb') {
        var r = parseInt(Math.random() * 266);
        var g = parseInt(Math.random() * 266);
        var b = parseInt(Math.random() * 266);
        var color = 'rgb(' + r + ', ' + g + ', ' + b + ')';
    }
    return color;

}

//--------------------------------------------------------------------------------------------------------

/*
    * @Author: Snake
    * @Date: 2019-08-16 08:41:49
    * @LastEditTime: 2019-08-19 19:22:16
    * @Description: 给m个类名为className的字体设置随机颜色（验证码）
*/

function setColor(m, type, Classname) {
    for (var j = 0; j < m; j++) {
        var color = '';
        if (type == 16) {
            var str = 'abcdef1234567890';
            color += '#';
            for (var i = 0; i < 6; i++) {
                var pi = parseInt(Math.random() * str.length);
                color += str[pi];
            }
        } else if (type == 'rgb') {
            var r = parseInt(Math.random() * 266);
            var g = parseInt(Math.random() * 266);
            var b = parseInt(Math.random() * 266);
            var color = 'rgb(' + r + ', ' + g + ', ' + b + ')';
        }
        Classname[j].style.color = color;
    }
}

//js库文件：仿jq，这里提供一些方法，以后可以反复调用，提高我们开发效率

/*
 * @Description: 封装一个函数可以实现下拉菜单的显示隐藏(点击版)
 * @Author: 大哲
 * @Date: 2019-07-23 15:21:00
 * @LastEditTime: 2019-07-23 16:10:27
 * @LastEditors: Please set LastEditors
 */

function hideShow(btn, ele) {//要参数：参数一：点击的对象；参数二：显示隐藏的对象
    btn.onclick = function () {
        if (ele.style.display == 'block') {//null == 'block'  'block'== 'block' 'none'=='block'
            ele.style.display = 'none';
        } else {
            //第一次：显示
            ele.style.display = 'block';
        }
    }
}

/*
 * @Description: 封装一个函数可以生成任意范围内的随机数
 * @Author: 大哲
 * @Date: 2019-07-23 15:21:00
 * @LastEditTime: 2019-07-23 16:10:27
 * @LastEditors: Please set LastEditors
 */

function ranNum(min, max) {
    //得到一个min到max之间的随机数：极限的时候,Math.random()为零的时候，最小的时候;Math.random()是1的时候是最大的时候
    return parseInt(Math.random() * (max - min + 1)) + min;
}

//封装函数过滤敏感词
function filter(str) {
    var arr = ['fuck', '操', '小学生', '妈蛋', '反清复明', '金正恩', '垃圾'];
    arr.forEach(function (item) {
        var reg = new RegExp(item, 'ig');//规则
        str = str.replace(reg, '***');
    });
    return str;
}

//封装函数：参数转成对象
function strToObj(str) {
    var obj = {};
    var arr1 = str.split('&');//["name=apple", "price=8999"]
    for (var i in arr1) {
        var arr2 = arr1[i].split('=');
        obj[arr2[0]] = arr2[1];
    }
    return obj;
}

function objToStr(obj) {
    //对象转成参数   {name:apple,price:8999}  name=apple&price=8999
    var str = '';
    for (var key in obj) {
        str += key + '=' + obj[key] + '&';//name=apple&price=8999&
    }
    return str.slice(0, -1);
}

function toDb(num) {//补零函数
    if (num < 10) {
        return '0' + num;
    } else {
        return '' + num;
    }
}

function setTime(num) {
    //毫秒数->天时分秒
    var sec = parseInt(num / 1000);//秒数
    var secs = sec % 60;//秒
    var min = parseInt(sec / 60) % 60;//分
    var hour = parseInt(sec / 60 / 60) % 24;//小时
    var day = parseInt(sec / 60 / 60 / 24);//天数

    // console.log(day, hour, min, secs);
    // return secs; //不同出现多个return
    // return min;

    return { //需要返回多个数字的时候用对象来传
        days: day,
        hours: hour,
        mins: min,
        secs: secs
    };
}

function getid(id) {//通过id查找元素
    return document.getElementById(id);
}

//兼容：面试题
function firstChild(ele) {
    //找到第一个孩子
    if (ele.firstElementChild) {
        //标准浏览器下
        return ele.firstElementChild;
    } else {
        //IE678
        return ele.firstChild;
    }
}

//仿jq的css()方法，设置和获取样式
//css(box,'width') 获取box的width样式
//css(box,'height','200px') 给box设置样式

function css() {
    if (arguments.length == 2) {
        //获取样式
        if (getComputedStyle(arguments[0], false)) {
            //标准浏览器
            var attr = arguments[1];
            return getComputedStyle(arguments[0], false)[attr];
        } else {
            //ie8-
            var attr = arguments[1];
            return arguments[0].currentStyle[attr];
        }
    } else if (arguments.length == 3) {
        //设置样式 box.style.display = 'none'
        var attr = arguments[1];
        arguments[0].style[attr] = arguments[2];
    }
}

//兼容处理  bind() 仿jq：绑定事件
function bind(ele, type, fn) {
    //ele:元素 type：事件名 fn:回调函数
    if (ele.addEventListener) {
        //标准浏览器
        ele.addEventListener(type, fn, false);
    } else {
        //ie8-
        ele.attachEvent('on' + type, fn);
    }
}

//封装深度拷贝
function deepClone(obj) {
    var str = JSON.stringify(obj);
    return JSON.parse(str);
}

/*
	运动框架封装：startMove()过渡    jq animate()
	最终版：多对象，多属性，链式运动框架(运动队列)
	参数一：对象名
	参数二：属性，目标值  键名：属性名，键值：目标值    {'width':200,'heigth':400}  实现：宽度和高度一起改变，宽度变成200，高度变成400
	参数三：回调函数(可选参数)
 */

function startMove(obj, json, fnend) {

    clearInterval(obj.timer); //防止定时器叠加
    obj.timer = setInterval(function () {

        var istrue = true;

        //1.获取属性名，获取键名：属性名->初始值
        for (var key in json) { //key:键名   json[key] :键值
            //			console.log(key); //width heigth opacity
            var cur = 0; //存初始值

            if (key == 'opacity') { //初始值
                cur = css(obj, key) * 100; //透明度
            } else {
                cur = parseInt(css(obj, key)); // 300px  300  width heigth borderwidth px为单位的

            }

            //2.根据初始值和目标值，进行判断确定speed方向，变形：缓冲运动
            //距离越大，速度越大,下面的公式具备方向
            var speed = (json[key] - cur) / 6; //出现小数
            speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed); //不要小数部分，没有这句话或晃动

            //保证上一个属性全部都达到目标值了
            if (cur != json[key]) { //width 200 heigth 400
                istrue = false; //如果没有达到目标值，开关false
            } else {
                istrue = true; //true true
            }

            //3、运动
            if (key == 'opacity') {
                obj.style.opacity = (cur + speed) / 100; //0-1
                obj.style.filter = 'alpha(opacity:' + (cur + speed) + ')'; //0-100
            } else {
                obj.style[key] = cur + speed + 'px'; //针对普通属性 left  top height 
            }

        }

        //4.回调函数:准备一个开关,确保以上json所有的属性都已经达到目标值,才能调用这个回调函数
        if (istrue) { //如果为true,证明以上属性都达到目标值了
            clearInterval(obj.timer);
            if (fnend) { //可选参数的由来
                fnend();
            }
        }

    }, 30); //obj.timer 每个对象都有自己定时器

}

/*
           仿jq的ajax封装：
               ajax({
                   type : 'get', 必填
                   url : 接口,必填
                   data : { //选填
                       name ：'蛋黄酥',
                       price : '39.9'
                   },
                   asyn : true,可选
                   success : function(str) {
                       //成功的回调
                   },
                   error : function(status) {//可选的
                       //失败的回调
                   }

               });
       */

function ajax(opt) {
    //默认参数
    let defaultOpt = {
        data: '',
        asyn: true,
        error: null
    }

    //替补方案
    Object.assign(defaultOpt, opt);//用defaultOpt

    //1.创建对象
    let xhr = new XMLHttpRequest();

    //2.写好参数，准备工作  open()
    //防止缓存
    if (defaultOpt.type.toLowerCase() == 'get') {
        //get请求
        if (defaultOpt.data) {
            //有数据，把数据拼接在url
            defaultOpt.url = defaultOpt.url + '?time=' + new Date() + '&' + objToStr(defaultOpt.data);
        }
        xhr.open('get', defaultOpt.url, defaultOpt.asyn);
        xhr.send(null);
    } else {
        //post请求
        xhr.open('post', defaultOpt.url + '?time=' + new Date(), defaultOpt.asyn);
        let data = objToStr(defaultOpt.data);
        xhr.setRequestHeader('content-type', "application/x-www-form-urlencoded");//请求头
        xhr.send(data);
    }

    //4.接收数据
    xhr.onreadystatechange = () => {
        if (xhr.readyState == 4) {
            if (xhr.status == 200 || xhr.status == 304) {
                //成功  
                defaultOpt.success(xhr.responseText);//实参
            } else {
                //失败
                if (defaultOpt.error) {
                    defaultOpt.error(xhr.status);//实参：http状态码
                }
            }
        }
    }

}


//获取cookie
function getCookie(key) {
    let str = document.cookie;//username=admin; age=18
    let arr = str.split('; ');
    for (let item of arr) {
        let arr2 = item.split('=');
        if (key == arr2[0]) {
            return arr2[1];
        }
    }
}

//设置cookie
function setCookie(key, val, iday) {
    let now = new Date();
    now.setDate(now.getDate() + iday);
    document.cookie = key + '=' + val + ';expires=' + now + ';path=/';
}

//删除
function removeCookie(key) {
    setCookie(key, '', -1);
}

function showtime(time) {
    var date = new Date(time * 1000);//拿到系统时间戳
    var year = date.getFullYear();//获取年
    var month = date.getMonth() + 1;//月 从0还是计算  0-11
    var day = date.getDate();//日
    var hour = date.getHours();//小时
    var min = date.getMinutes();//分
    var sec = date.getSeconds();//秒
    // var week = date.getDay();


    function addO(num) {//不满10前面加0
        if (num < 10) {
            return '0' + num;
        } else {
            return '' + num;
        }
    }

    var str1 = addO(year) + '-' + addO(month) + '-' + addO(day);//获取年月日
    var str2 = addO(hour) + ':' + addO(min) + ':' + addO(sec);//获取时分秒

    //拼接年月日
    var html = str1 + ' ' + str2;
    return html;
}


//--------------------------------------------------------------------------------------------------------

/*
    * @Author: Snake
    * @Date: 2019-08-16 08:41:49
    * @LastEditTime: 2019-08-19 19:22:16
    * @Description: 封装正则大全函数
*/


var checkReg = {
    email: function (str) {
        //邮件：数字字母下划线组合+@+数字字母下划线组合+.com
        var reg = /^\w+([\-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
        return str = reg.test(str);
    },
    phone: function (str) {
        //手机号码：11位数字；第一位：1；第二位3-9；
        var reg = /^1[3-9]\d{9}$/;
        return str = reg.test(str);
    },
    url: function (str) {
        //  路径链接： https://www.字母数字组合.字母数字组合
        var reg = /[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+\.?/;
        return str = reg.test(str);
    },
    date: function (str) {
        //日期 ：1997-08-18或者1997/08/18或者19970818
        var reg = /^\d{4}([\/\-]?)\d{1,2}\1\d{1,2}$/;
        return str = reg.test(str);
    },
    chinese: function (str) {
        //昵称只能输入中文 
        var reg = /^[\u2E80-\u9FFF]+$/;
        return str = reg.test(str);
    },
    name: function (str) { //账号字母开头,5-12位
        var reg = /^[a-zA-Z0-9][\w\-]{4,11}$/;
        return reg.test(str);
    },
    password: function (str) {
        //密码，不能有空格，6-20位数
        var reg = /^\S{5,19}$/;
        return str = reg.test(str);
    },
    pwwagain: function (str1, str2) { //确认密码
        return str1 === str2; //全等 恒等
    },
    idcard: function (str) {
        //身份证
        var reg = /^(\d{17}|\d{14})[\dX]$/;
        return str = reg.test(str);
    },
    birthday: function (str) { //生日
        var reg = /^((((19|20)\d{2})-(0?[13-9]|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/;
        return reg.test(str);
    }
}