//用户管理
$(function () {
    $('.meun-item').click(function () {
        $(this).attr('class', 'meun-item meun-item-active').siblings().attr('class', 'meun-item');
        $('#admintion').attr('class', 'meun-title');
        $('.tab-pane').css('display', 'none');
    });

    $('.user').click(function () {
        $('.tab-pane').css('display', 'block');
        creatname();
        function creatname() {
            $.ajax({
                type: 'get',
                url: 'api/username.php',
                dataType: 'json',
                data: {
                    m: 'inquire'
                },
                success: str => {
                    let html = str.map((item, index) => {
                        return ` <div class="row">
                            <div class="col-xs-2">
                                ${index + 1}
                            </div>
                            <div class="col-xs-2 ">
                                ${item.username}
                            </div>
                            <div class="col-xs-2">
                                ${item.password}
                            </div>
                            <div class="col-xs-2">
                            </div>
                            <div class="col-xs-2">
                                正常
                            </div>
                            <div class="col-xs-2" data-uid="${item.id}">
                                <button class="btn btn-success btn-xs btn-up" data-toggle="modal"
                                    data-target="#reviseUser">修改</button>
                                <button class="btn btn-danger btn-xs btn-del" data-toggle="modal"
                                    data-target="#deleteUser">删除</button>
                            </div>
                        </div>`
                    }).join('');
                    $('.tablebody').html(html);

                    //删除用户
                    $('.btn-del').click(function () {
                        $('#deleteUser').css('display', 'block');
                        $('#deleteUser').attr('class', 'modal fade in');
                        let uid = $(this.parentNode).attr('data-uid');
                        $('.del').click(function () {
                            $.ajax({
                                type: 'get',
                                url: 'api/username.php',
                                data: {
                                    m: 'del',
                                    uid,
                                },
                                success: str => {
                                    creatname();
                                    $('.fade').css('display', 'none');
                                    $('.fade').attr('class', 'modal fade');
                                }
                            });
                        });
                    });
                    //修改密码
                    $('.btn-up').off('click').click(function () {
                        console.log(1);
                        $('#reviseUser').attr('class', 'modal fade in');
                        $('#reviseUser').css('display', 'block');
                        let uid = $(this.parentNode).attr('data-uid');
                        $('.pas-sure').click(function () {
                            let pas = $('#newpass').val().trim();
                            if (pas) {
                                $.ajax({
                                    type: 'get',
                                    url: 'api/username.php',
                                    data: {
                                        uid,
                                        m: 'amend',
                                        pas
                                    },
                                    success: str => {
                                        creatname();
                                        $('#newpass').val('');
                                        $('.fade').css('display', 'none');
                                        $('.fade').attr('class', 'modal fade');
                                    }
                                });
                            }
                        });
                    });

                    //添加用户

                    function checkInput1(opt) {
                        opt.ele.onfocus = () => {
                            opt.ele.placeholder = '';
                        }

                        opt.ele.oninput = function () {
                            var val = this.value.trim();
                            if (val) {
                                var str = `checkReg.${opt.type}(val)`;//eval() 把字符串转成js代码
                                var isok = eval(str);
                                if (isok) {
                                    //正则验证通过
                                    opt.inf.className = opt.classname + ' iconfont icon-zhengque1';
                                    opt.ele.style.borderColor = '#bdc3c7';
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

                        opt.ele.oninput = function () {
                            var val = this.value.trim();
                            if (val) {
                                var str = `checkReg.${opt.type}(val)`;//eval() 把字符串转成js代码
                                var isok = eval(str);
                                if (isok) {
                                    //正则验证通过
                                    opt.inf.className = opt.classname + ' iconfont icon-zhengque1';
                                    opt.ele.style.borderColor = '#bdc3c7';
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

                    let uname = document.querySelector('#sName');
                    let namehint = document.querySelector('.name-hint');
                    let password = document.querySelector('#pass');
                    let passwordhint = document.querySelector('.password-hint');
                    var istrue1 = false;
                    var istrue2 = false;

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

                    $('.btn-yellow').click(function () {
                        $('#addUser').css('display', 'block');
                        $('#addUser').attr('class', 'modal fade in');
                        $('.pass-sure').click(function () {
                            let username = $('#sName').val().trim();
                            let pas = $('#pass').val().trim();

                            if (istrue1 && istrue2) {

                                $.ajax({
                                    type: 'post',
                                    url: 'api/username.php',
                                    data: {
                                        m: 'add',
                                        username,
                                        pas
                                    },
                                    success: str => {
                                        let obj = JSON.parse(str);
                                        if (!obj.code) {
                                            alert(obj.message);
                                            creatname();
                                            $('#sName').val('');
                                            $('#pass').val('');
                                            $('.name-hint').attr('class', 'name-hint');
                                            $('.password-hint').attr('class', 'password-hint');
                                            $('.fade').css('display', 'none');
                                            $('.fade').attr('class', 'modal fade');
                                        } else {
                                            alert(obj.message);
                                            $('#sName').val('');
                                            $('#sName').focus();
                                            $('.name-hint').attr('class', 'name-hint');
                                        }
                                    }
                                });
                            }
                        });
                    });

                    $('.btn-white').click(function () {
                        $('.fade').css('display', 'none');
                        $('.fade').attr('class', 'modal fade');
                    });

                    $('.close').click(function () {
                        $('.fade').css('display', 'none');
                        $('.fade').attr('class', 'modal fade');
                    });
                }
            });
        }
    });
});