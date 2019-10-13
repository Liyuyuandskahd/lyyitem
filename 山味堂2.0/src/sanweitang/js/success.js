(function () {
    let toskip = document.querySelector('.toskip');
    let second = document.querySelector('.second');
    let cond = document.querySelector('.cond');
    let num = 3;
    let timer = null;

    let condition = getCookie('condition');
    cond.innerHTML = condition;
    timer = setInterval(function () {
        num--;
        second.innerHTML = num;
        if (num == 1) {
            skipurl();
        }
    }, 1000);

    function skipurl() {
        clearInterval(timer);
        if (cond.innerHTML == '注册') {
            location.href = 'denglu.html';
        } else {
            let skipurl = getCookie('skipurl');
            if (skipurl) {
                location.href = skipurl;
            } else {
                location.href = '../index.html';
            }
        }
    }

    toskip.onclick = () => {
        skipurl();
    }
})();