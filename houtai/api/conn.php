<?php
//1.建立连接
$servername = 'localhost';    //主机
$username = 'root';   //登录数据库用户名
$password = '';
$dbname = 'swtuser';     //库名

$conn = new mysqli($servername, $username, $password, $dbname);

//php里面获取对象属性和方法：$conn->属性名  $conn->方法名();
if ($conn->connect_error) {
    //连接失败
    die("连接失败：" . $conn->connect_error);
} else {
    // echo "连接成功";
}
$conn->set_charset('utf8');//设置编码
