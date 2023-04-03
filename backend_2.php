<?php
require_once("connect.php");
$table = $_POST['tableName'];
$sql = "SELECT * FROM `".$table."`";

$result = $mysqli->query($sql);
$data = [];
while ($row = $result->fetch_assoc()) {
    $sor = [];
    $sor['id'] =$row['Az'];
    $sor['Name'] = $row['Tantargy'];
    $data[] = $sor;
}
echo json_encode($data);
?>