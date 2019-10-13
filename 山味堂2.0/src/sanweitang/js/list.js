//排序
(function () {
    $('.sort p').each(function (index, item) {
        $(item).mouseenter(function () {
            if ($(this).find('span').eq(1).attr('class') == 'iconfont icon-jiangxu1') {
                $(this).find('span').eq(1).attr('class', 'iconfont icon-shengxu1');
            } else {
                $(this).find('span').eq(1).attr('class', 'iconfont icon-jiangxu1');
            }
        });
        $(item).mouseleave(function () {
            if ($(this).find('span').eq(1).attr('class') == 'iconfont icon-jiangxu1') {
                $(this).find('span').eq(1).attr('class', 'iconfont icon-shengxu1');
            } else {
                $(this).find('span').eq(1).attr('class', 'iconfont icon-jiangxu1');
            }

        })
    });
})();

//渲染数据
(function () {
    let list = document.querySelector('.main-right-shoplist'); //列表页父元素节点
    let pagenumber = document.querySelector('.pagenumber');
    let inpage = document.querySelector('.pagenumber-box'); //页码父元素节点
    let pagination = document.querySelector('.pagination'); //页码父元素节点
    let scont = document.querySelector('.intext');//搜索框节点
    let sure = document.querySelector('.seek'); //搜索按钮节点
    let sort = document.querySelector('.sort'); //排序类型
    let pricerank = document.querySelector('.price-rank'); //价格排序
    let notrank = document.querySelector('.notrank'); //价格排序
    let pagebox = document.querySelector('.page');
    let shopstotal = document.querySelector('.shopstotal');
    let nowpage = document.querySelector('.nowpage');
    let allpage = document.querySelectorAll('.allpage');
    let ipage = 1;  //页码
    let num = 16;    //每页的商品数量
    let keyword = location.search.slice(1);   //用来装搜索内容
    let rank = '';  //排序
    let isok = false;

    function init() {
        ajax({
            type: 'get',
            url: '../api/getdata.php',
            data: {
                ipage,
                num,
                rank,
                keyword
            },
            success: function (res) {
                vray(res);
            }
        });

        function vray(res) {
            let arr = JSON.parse(res);
            let html = arr.newarr.map(function (item) {
                return `<li data-id=${item.id} title="${item.name}">
                            <div class="shoplist-box">
                                <img src="${item.imgurl}" alt="">
                            </div>
                            <p>${item.name}</p>
                            <p>
                                <span>¥${item.nowprice}</span>
                                <span>¥${item.originalprice}</span>
                            </p>
                            <p>已售${item.sell}件</p>
                            <p>
                                <span class="iconfont icon-shoucang11"></span>
                                <span>收藏</span>
                                <span class="iconfont icon-pinglun"></span>
                                <span>${item.comment}</span>
                            </p>
                            <span class="boutique">精品</span>
                        </li>`;
            }).join('');
            list.innerHTML = html;
            shopstotal.innerHTML = arr.tatol;
            nowpage.innerHTML = ipage;

            let tol = Math.ceil(arr.tatol / num);   //页码数=商品楼总数/每页的商品数
            for (let i = 0; i < allpage.length; i++) {
                allpage[i].innerHTML = tol;
            }
            let sth = '';
            for (i = 0; i < tol; i++) {
                sth += `<span>${i + 1}</span>`;
            }
            inpage.innerHTML = sth;
            inpage.style.width = tol * inpage.children[0].offsetWidth + 10 * tol + 'px';//设置页码父元素的宽度
            inpage.children[ipage - 1].classList.add('active'); //页码高亮

            inpage.onclick = ev => {
                if (ev.target.tagName == 'SPAN') {
                    ipage = ev.target.innerHTML;    //点击到哪个页码，就获取它的内容，赋值给当前页码数
                    window.scrollTo(0, 0);
                    init();
                }
            }

            pricerank.onclick = (ev) => {   //排序
                console.log(ev.target.parentNode.children[0]);
                for (let i = 0; i < ev.target.parentNode.children.length; i++) {
                    for (let j = 0; j < ev.target.parentNode.children[i].children.length; j++) {
                        ev.target.parentNode.children[i].children[j].style.color = '#666666';
                    }

                }
                for (let i = 0; i < ev.target.parentNode.parentNode.children.length; i++) {
                    for (let j = 0; j < ev.target.parentNode.parentNode.children[i].children.length; j++) {
                        ev.target.parentNode.parentNode.children[i].children[j].style.color = '#666666';
                    }

                }

                if (isok) {
                    rank = 'asc';
                    pricerank.children[1].className = 'iconfont icon-jiangxu1';
                    pricerank.children[0].style.color = '#c01414';
                    pricerank.children[1].style.color = '#c01414';
                    isok = false;
                } else {
                    rank = 'desc';
                    pricerank.children[1].className = 'iconfont icon-shengxu1';
                    pricerank.children[0].style.color = '#c01414';
                    pricerank.children[1].style.color = '#c01414';
                    isok = true;
                }
                ipage = 1;
                init();

            }

            notrank.onclick = (ev) => {   //排序
                for (let i = 0; i < ev.target.parentNode.children.length; i++) {
                    for (let j = 0; j < ev.target.parentNode.children[i].children.length; j++) {
                        ev.target.parentNode.children[i].children[j].style.color = '#666666';
                    }

                }
                for (let i = 0; i < ev.target.parentNode.parentNode.children.length; i++) {
                    for (let j = 0; j < ev.target.parentNode.parentNode.children[i].children.length; j++) {
                        ev.target.parentNode.parentNode.children[i].children[j].style.color = '#666666';
                    }

                }

                rank = '';
                notrank.children[0].style.color = '#c01414';
                ipage = 1;
                init();
            }

            //上一页和下一页、首页和尾页

            if (ipage == 1) {
                pagebox.children[0].classList.add('showcss');
                pagebox.children[1].classList.add('showcss');
            } else {
                pagebox.children[0].classList.remove('showcss');
                pagebox.children[1].classList.remove('showcss');

                pagebox.children[0].onmouseover = () => {
                    pagebox.children[0].classList.add('altercss');
                }
                pagebox.children[0].onmouseout = () => {
                    pagebox.children[0].classList.remove('altercss');
                }
                pagebox.children[1].onmouseover = () => {
                    pagebox.children[1].classList.add('altercss');
                }
                pagebox.children[1].onmouseout = () => {
                    pagebox.children[1].classList.remove('altercss');
                }
            }
            if (ipage == inpage.children.length) {
                pagebox.children[3].classList.add('showcss');
                pagebox.children[4].classList.add('showcss');
            } else {
                pagebox.children[3].classList.remove('showcss');
                pagebox.children[4].classList.remove('showcss');

                pagebox.children[3].onmouseover = () => {
                    pagebox.children[3].classList.add('altercss');
                }
                pagebox.children[3].onmouseout = () => {
                    pagebox.children[3].classList.remove('altercss');
                }
                pagebox.children[4].onmouseover = () => {
                    pagebox.children[4].classList.add('altercss');
                }
                pagebox.children[4].onmouseout = () => {
                    pagebox.children[4].classList.remove('altercss');
                }
            }

            pagination.onclick = (ev) => {
                //上一页
                if (ev.target.className == 'iconfont icon-shangyiye') {
                    if (ipage > 1) {
                        ipage--;
                        scrollTo(0, 0);
                        init();
                    }
                }

                //下一页
                if (ev.target.className == 'iconfont icon-xiayiye') {
                    if (ipage < inpage.children.length) {
                        ipage++;
                        scrollTo(0, 0);
                        init();
                    }
                }
            }

            pagebox.onclick = (ev) => {
                //首页
                if (ev.target.value == '首页') {
                    if (ipage != 1) {
                        ipage = 1;
                        scrollTo(0, 0);
                        init();
                    }
                }

                //上一页
                if (ev.target.value == '上一页') {
                    if (ipage > 1) {
                        ipage--;
                        init();
                        scrollTo(0, 0);
                    }
                }

                //下一页
                if (ev.target.value == '下一页') {
                    if (ipage < inpage.children.length) {
                        ipage++;
                        init();
                        scrollTo(0, 0);
                    }
                }

                //尾页
                if (ev.target.value == '尾页') {
                    if (ipage != inpage.children.length) {
                        ipage = inpage.children.length;
                        init();
                        scrollTo(0, 0);
                    }
                }

                // console.log(ipage);
            }

            //跳转详情页
            list.onclick = (ev) => {

                if (ev.target.tagName == 'IMG') {
                    console.log(ev.target.parentNode.parentNode.dataset.id);
                    let sid = ev.target.parentNode.parentNode.dataset.id;
                    window.open('xqy.html?' + sid);
                }
            }

            //跳转主页
            let mainpage = document.querySelector('.main-page');
            mainpage.onclick = () => {
                location.href = '../index.html';
            }

            //跳转列表页
            let listpage = document.querySelector('.list-page');
            listpage.onclick = () => {
                location.href = 'liebiaoye.html';
            }

        }
    }


    init();
})();