<?php
include 'conn.php';

//接收前端传过来的值
$page = isset($_REQUEST['ipage']) ? $_REQUEST['ipage'] : '1';
$num = isset($_REQUEST['num']) ? $_REQUEST['num'] : '16';
$keyword = isset($_REQUEST['keyword']) ? $_REQUEST['keyword'] : '';
$rank = isset($_REQUEST['rank']) ? $_REQUEST['rank'] : 'asc';


/*
        * 接收前端数据：ipage 1、num 6
        * 写查询语句：SELECT * FROM goods LIMIT 起始下标,条数;

        page   每页条数num    下标index
        1        10                0
        2        10                10
        3        10                20
    */
//商品的下标
$index = ($page - 1) * $num;

if ($keyword) {
    if ($rank) {
        $sql = "SELECT * FROM shopdata WHERE name LIKE '%$keyword%' ORDER BY nowprice $rank LIMIT $index,$num";
        $res = $conn->query($sql);
        $arr = $res->fetch_all(MYSQLI_ASSOC);
        $sql2 = "SELECT * FROM shopdata WHERE name LIKE '%$keyword%'";
        $res2 = $conn->query($sql2);
    } else {
        $sql = "SELECT * FROM shopdata WHERE name LIKE '%$keyword%' LIMIT $index,$num";
        $res = $conn->query($sql);
        $arr = $res->fetch_all(MYSQLI_ASSOC);
        $sql2 = "SELECT * FROM shopdata WHERE name LIKE '%$keyword%'";
        $res2 = $conn->query($sql2);
    }
} else {
    if ($rank) {
        $sql5 = "SELECT * FROM shopdata ORDER BY nowprice $rank LIMIT $index,$num";
        $res5 = $conn->query($sql5);
        $arr = $res5->fetch_all(MYSQLI_ASSOC);
    } else {
        $sql5 = "SELECT * FROM shopdata LIMIT $index,$num";
        $res5 = $conn->query($sql5);
        $arr = $res5->fetch_all(MYSQLI_ASSOC);
    }
}


// var_dump($arr);

$sql6 = 'SELECT * FROM shopdata';
$res6 = $conn->query($sql6);
if ($keyword) {
    $sum = $res2->num_rows;
} else {
    $sum = $res6->num_rows;
}

$data = array(
    'tatol' => $sum,
    'newarr' => $arr,
    'page' => $page,
    'num' => $num
);

echo json_encode($data, JSON_UNESCAPED_UNICODE);

$conn->close();
