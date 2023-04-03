<?php
// $_POST
require_once("connect.php");
//var_dump($_POST);
$osztaly = $_POST['osztaly'];
$orafaj = $_POST['oratipus'];
$oraszam = $_POST['ora'];
$nap = $_POST['nap'];

/*
$sorok = "1"
$sorok == 1 => TRUE
 $sorok === 1 => FALSE
*/
/* create a prepared statement */
$sql = "INSERT INTO `orak` (`Osztalyok`, `Oraszam`, `Tantargy`, `Nap`)
 VALUES (?, ?, ?, ?)";
$stmt = $mysqli->prepare($sql);

/* bind parameters for markers */
$stmt->bind_param("siis", $osztaly,$oraszam,$orafaj,$nap);
$stmt->execute();
echo "Sikeres beküldés"
?>
