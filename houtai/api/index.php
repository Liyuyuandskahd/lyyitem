<?php
include 'conn.php';
$a = isset($_REQUEST['a']) ? $_REQUEST['a'] : '';
// echo json_encode($a, JSON_UNESCAPED_UNICODE);

//验证用户名
if ($a == 'verifyUserName') {
    $username = isset($_REQUEST['username']) ? $_REQUEST['username'] : 'a12345';

    $sql = "SELECT*FROM user WHERE username='$username'";
    $res = $conn->query($sql);
    if ($res->num_rows) {
        $data = array(
            'code' => 1,
            'message' => '用户名已存在'
        );
    } else {
        $data = array(
            'code' => 0,
            'message' => '验证通过'
        );
    }

    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    $conn->close();
}

//注册
if ($a == 'loginName') {
    $username = isset($_REQUEST['username']) ? $_REQUEST['username'] : '';
    $password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';

    $sql2 = "SELECT * FROM user WHERE username='$username'";
    $res2 = $conn->query($sql2);
    if ($res2->num_rows) {
        $data = array(
            'code' => 1,
            'message' => '注册失败'
        );
    } else {
        $sql = "INSERT INTO user(username,password) VALUES('$username','$password')";
        $res = $conn->query($sql);
        $data = array(
            'code' => 0,
            'message' => '注册成功'
        );
    }

    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    $conn->close();
}

//登录
if ($a == 'logonName') {
    $username = isset($_REQUEST['username']) ? $_REQUEST['username'] : '';
    $password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';

    $sql = "SELECT * FROM user WHERE username='$username' AND password='$password'";
    $res = $conn->query($sql);
    if ($res->num_rows) {
        $data = array(
            'code' => 0,
            'message' => '登录成功'
        );
    } else {
        $data = array(
            'code' => 1,
            'message' => '登录失败'
        );
    }

    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    $conn->close();
}

//通过用户名查找用户id，存到cookie
if ($a == 'getuserid') {
    $username = isset($_REQUEST['username']) ? $_REQUEST['username'] : '';
    $sql = "SELECT * FROM user WHERE username='$username'";
    $res = $conn->query($sql);
    $arr = $res->fetch_all(MYSQLI_ASSOC);

    echo json_encode($arr, JSON_UNESCAPED_UNICODE);

    $conn->close();
}
