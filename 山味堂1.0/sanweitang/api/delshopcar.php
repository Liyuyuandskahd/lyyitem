<?php
include 'conn.php';

$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : '';
$sql = "DELETE FROM shopcar WHERE uid=$uid";
$res = $conn->query($sql);

$sql2 = "SELECT * FROM shopcar WHERE uid=$uid";
$res2 = $conn->query($sql2);

if ($res2->num_rows) {
    $data = array(
        'code' => 0,
        'message' => '删除失败'
    );
} else {
    $data = array(
        'code' => 1,
        'message' => '删除成功'
    );
}

echo json_encode($data, JSON_UNESCAPED_UNICODE);
$conn->close();
