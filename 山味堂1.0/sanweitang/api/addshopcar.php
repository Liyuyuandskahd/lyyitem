<?php
include 'conn.php';
$id = isset($_REQUEST['cid']) ? $_REQUEST['cid'] : 1;
$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : 1;
$anum = isset($_REQUEST['anum']) ? $_REQUEST['anum'] : 1;

$sql = "SELECT* FROM shopdata WHERE id=$uid";
$res = $conn->query($sql);
$arr = $res->fetch_all(MYSQLI_ASSOC);

$name = $arr[0]['name'];
$imgurl = $arr[0]['imgurl'];
$nowprice = $arr[0]['nowprice'];
$inventory = $arr[0]['inventory'];

$sql2 = "INSERT INTO shopcar(id,uid,name,imgurl,nowprice,inventory,buynum) VALUES($id,$uid,'$name','$imgurl',$nowprice,$inventory,$anum)";
$res2 = $conn->query($sql2);

$sql3 = "SELECT * FROM shopcar WHERE id=$id AND uid=$uid";
$res3 = $conn->query($sql3);

if ($res3->num_rows) {
    $data = array(
        'code' => 1,
        'message' => '成功加入购物车'
    );
} else {
    $data = array(
        'code' => 0,
        'message' => '加入失败'
    );
}

// var_dump($arr);
echo json_encode($data, JSON_UNESCAPED_UNICODE);
$conn->close();
