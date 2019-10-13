<?php
include 'conn.php';

$id = isset($_REQUEST['id']) ? $_REQUEST['id'] : 1; //用户id
$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : 1; //商品id

//查询历史记录里有没有该商品
$sql = "SELECT*FROM history WHERE uid = $uid";
$res = $conn->query($sql);

$sql1 = "SELECT*FROM shopdata WHERE id = $uid";
$res1 = $conn->query($sql1);
$arr1 = $res1->fetch_all(MYSQLI_ASSOC);
$name = $arr1[0]['name'];
$imgurl = $arr1[0]['imgurl'];

if ($res->num_rows) {
    //历史记录里有该商品，先删除，再添加
    $sql2 = "DELETE FROM history WHERE uid = $uid";
    $res2 = $conn->query($sql2);

    $sql3 = "INSERT INTO history(id,uid,name,imgurl) VALUES($id,$uid,'$name','$imgurl')";
    $res3 = $conn->query($sql3);
} else {
    //历史记录里没有该商品，直接添加
    $sql3 = "INSERT INTO history(id,uid,name,imgurl) VALUES($id,$uid,'$name','$imgurl')";
    $res3 = $conn->query($sql3);
}

$sql4 = "SELECT*FROM history WHERE id = $id";
$res4 = $conn->query($sql4);
$arr4 = $res4->fetch_all(MYSQLI_ASSOC);

echo json_encode($arr4, JSON_UNESCAPED_UNICODE);
$conn->close();
