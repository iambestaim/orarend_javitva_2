
    <?php
require_once("connect.php");
//$table = $_POST['evfolyamok'];
$sql = "SELECT `evfolyamok`.`Osztalyok`, `orarend`.`Oraszam`, `orak_fajtai`.`Tantargy`, `napok`.`Napnev`\n"

    . "FROM `evfolyamok`\n"

    . "    INNER JOIN `orak` ON `orak`.`Osztalyok` = `evfolyamok`.`Az`\n"

    . "    INNER JOIN `napok` ON `orak`.`Nap` = `napok`.`id`\n"

    . "    INNER JOIN `orak_fajtai` ON `orak`.`Tantargy` = `orak_fajtai`.`Az`\n"

    . "    INNER JOIN `orarend` ON `orak`.`Oraszam` = `orarend`.`Oraszam`\n"

    . "    WHERE `orak`.`Osztalyok` = 2;";


$result = $mysqli->query($sql);
$data = [];
while ($row = $result->fetch_assoc()) {
    $sor = [];
    $sor['Name'] = $row['Osztalyok'];
    $sor['Oraszam'] = $row['Oraszam'];
    $sor['Tantargy'] = $row['Tantargy'];
    $sor['Nap'] = $row['Napnev'];
    $data[] = $sor;
}
echo json_encode($data);
?>