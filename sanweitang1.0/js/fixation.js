//--------------------------------------------------------------------------------------------------------

/*
    * @Author: Snake
    * @Date: 2019-08-16 08:41:49
    * @LastEditTime: 2019-08-19 19:22:16
    * @Description: 吸顶菜单
*/

function fixation(className) {
    var tabControl = document.getElementsByClassName(className)[0];
    var tabtop = tabControl.offsetTop;

    window.onscroll = function () {
        var scrtop = window.scrollY;
        if (scrtop > tabtop) {
            tabControl.className = className + ' tabfix';
        } else {
            tabControl.className = className;
        }
    }
}

//调用：fixation('tabControl');//传需要吸顶的元素的class名