<?php
include 'conn.php';

$sid = isset($_REQUEST['sid']) ? $_REQUEST['sid'] : 1;
$anum = isset($_REQUEST['anum']) ? $_REQUEST['anum'] : 1;

$sql = "UPDATE shopcar SET buynum=$anum WHERE uid=$sid";
$res = $conn->query($sql);

$conn->close();
