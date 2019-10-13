(function () {

    //轮播图
    var swiper = new Swiper('#bar', {
        spaceBetween: 30,
        centeredSlides: true,
        loop: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true
        }
    });

    //鼠标放上暂停轮播
    // swiper.el.onmouseover = function () {
    //     swiper.autoplay.stop();
    // }
    // swiper.el.onmouseleave = function () {
    //     swiper.autoplay.start();
    // }

    //限时抢购
    function toTime(time) {
        var day = parseInt(time / 1000 / 60 / 60 / 24);
        var hour = parseInt(time / 1000 / 60 / 60 % 24); //时
        var min = parseInt(time / 1000 / 60 % 60 % 60); //分
        var sec = parseInt(time / 1000 % 60 % 60 % 60); //秒
        return {
            _day: day,
            _hour: hour,
            _min: min,
            _sec: sec
        }
    }

    function addO(num) {//不满10前面加0
        if (num < 10) {
            return '0' + num;
        } else {
            return '' + num;
        }
    }

    var countdown = document.querySelector('.count-down');
    var endTime = '2019-10-20 15:20:00';    //结束时间
    endTime = Date.parse(endTime);//把时间转换成距1970-1-1零时的毫秒数

    function showTime() {
        var nowTime = Date.now();   //获取当前时间距1970-1-1零时的毫秒数
        var res = endTime - nowTime;    //相减，得到两个时间相差毫秒数
        if (parseInt(res / 1000) == 0) {
            clearInterval(timing);
            countdown.innerHTML = '';
        } else {
            var timer = toTime(res);
            html = '';
            for (var i in timer) {
                html += `<span>${addO(timer[i])}</span>`;
            }
            countdown.innerHTML = html;
        }
    }

    showTime();
    var timing = setInterval(showTime, 1000);

    //限时抢购商品
    var swipertow = new Swiper('#rush', {
        slidesPerView: 4,
        spaceBetween: 0,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        }
    });

    //商品小轮播图
    var samllswiper = new Swiper('#content-bar', {
        spaceBetween: 30,
        centeredSlides: true,
        loop: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        }
    });

    var samllswiper = new Swiper('#content-bar2', {
        spaceBetween: 30,
        centeredSlides: true,
        loop: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        }
    });

    var samllswiper = new Swiper('#content-bar3', {
        spaceBetween: 30,
        centeredSlides: true,
        loop: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        }
    });

    var samllswiper = new Swiper('#content-bar4', {
        spaceBetween: 30,
        centeredSlides: true,
        loop: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        }
    });

    //跳转主页
    let mainpage = document.querySelector('.main-page');
    mainpage.onclick = () => {
        location.href = 'index.html';
    }

    //跳转列表页
    let listpage = document.querySelector('.list-page');
    listpage.onclick = () => {
        let ikeyword = '';
        location.href = 'html/liebiaoye.html?' + ikeyword;
    }
})();