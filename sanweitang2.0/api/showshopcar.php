<?php
include 'conn.php';
$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : 0;

$sql = "SELECT * FROM shopcar WHERE id=$uid";
$res = $conn->query($sql);
$arr = $res->fetch_all(MYSQLI_ASSOC);

echo json_encode($arr, JSON_UNESCAPED_UNICODE);

$conn->close();
