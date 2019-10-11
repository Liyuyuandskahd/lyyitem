<?php
include 'conn.php';
$id = isset($_REQUEST['cid']) ? $_REQUEST['cid'] : 1;
$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : 1;

$sql = "SELECT * FROM shopcar WHERE id=$id AND uid=$uid";
$res = $conn->query($sql);
$arr = $res->fetch_all(MYSQLI_ASSOC);

if ($res->num_rows) {
    $data = array(
        'code' => 0,
        'message' => '加入成功',
        'newarr' => $arr
    );
} else {
    $data = array(
        'code' => 1,
        'message' => '加入成功'
    );
}

echo json_encode($data, JSON_UNESCAPED_UNICODE);
$conn->close();
