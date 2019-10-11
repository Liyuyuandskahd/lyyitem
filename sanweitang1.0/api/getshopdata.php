<?php
include 'conn.php';
$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : 1;
$sql = "SELECT*FROM shopdata WHERE id = $uid";
$res = $conn->query($sql);
$arr = $res->fetch_all(MYSQLI_ASSOC);

// var_dump($arr);
echo json_encode($arr,JSON_UNESCAPED_UNICODE);

$conn->close();
