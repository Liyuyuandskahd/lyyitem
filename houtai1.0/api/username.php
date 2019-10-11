<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "swtuser";
//创建连接
$conn = new mysqli($servername, $username, $password, $dbname);
//检测连接
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}
$conn->set_charset('utf8');

$m = isset($_REQUEST['m']) ? $_REQUEST['m'] : ''; //功能
$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : ''; //用户id
$username = isset($_REQUEST['username']) ? $_REQUEST['username'] : ''; //修改的密码
$pas = isset($_REQUEST['pas']) ? $_REQUEST['pas'] : ''; //修改的密码
if ($m == 'del') { //删除
    $sql = "DELETE FROM	user WHERE id=$uid";
    $res = $conn->query($sql);

    $conn->close();
}
if ($m == 'inquire') { //查询 
    $sql = "SELECT*FROM user";
    $res = $conn->query($sql);
    $arr = $res->fetch_all(MYSQLI_ASSOC);
    echo json_encode($arr);

    $conn->close();
}
if ($m == 'amend') { //修改
    $sql = "UPDATE user SET `password`='$pas' WHERE id=$uid";
    $res = $conn->query($sql);

    $conn->close();
}
if ($m == 'add') { //添加
    $usersql = "SELECT *FROM user WHERE username='$username'";
    $userres = $conn->query($usersql);
    if ($userres->num_rows) {
        $data = array(
            'code' => 1,
            'message' => '用户名已存在'
        );
    } else {
        $sql = "INSERT INTO user (username,password) VALUE('$username','$pas')";
        $res = $conn->query($sql);
        $data = array(
            'code' => 0,
            'message' => '添加成功！'
        );
    }

    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    $conn->close();
}
