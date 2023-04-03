<?php
$database = "orarend";
$mysqli = new mysqli("localhost", "tanulo", "tanulo",$database); 

if (!$mysqli) {
    die('Nem lehet csatlakozni a MySQL-hez ' . $mysqli->connect_errno);
}
$db= $mysqli->select_db($database);
if (!$db) {
   die('Nem lehet megnyitni az adatbázist: ' . $mysqli->connect_errno);
}
@$mysqli->query('SET NAMES utf8');
?>