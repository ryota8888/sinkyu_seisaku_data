<?php

$dsn = 'mysql:host=localhost;dbname=bluearchive_database;charset=utf8';
$user = 'root';
$pass = '';

$pdo  = new PDO($dsn, $user, $pass);
$raw = file_get_contents('php://input');
$data = json_decode($raw);

// $str_r = str_repeat('?,',count($data)-1);
$str_r = [];
for ($i = 0; $i < count($data); $i++) {
    $str_r[$i] = str_repeat('?,', count($data[$i]) - 1);
}

// $sql = "SELECT name_alpha FROM char_info WHERE rarity in (" . $str_r[0] . "?)";
$sql = "SELECT name_alpha FROM char_info WHERE (rarity in (" . $str_r[0] . "?)) AND (attack in (" . $str_r[1] . "?)) AND (defense in (" . $str_r[2] . "?)) AND (class in (" . $str_r[3] . "?)) AND (position in (" . $str_r[4] . "?)) AND (school in (" . $str_r[5] . "?))";
// $sql = "SELECT name_alpha FROM `char_info` WHERE  (rarity in (1,2)) AND (attack in ('red','yellow')) AND (defense in ('red')) AND (class in ('supporter')) AND (position in ('MIDDLE','BACK')) AND (school in ('トリニティ','ミレニアム'))";

$stmt = $pdo->prepare($sql);

// for ($i = 0; $i < count($data); $i++) {
//     $stmt->bindParam($i + 1, $data[$i], PDO::PARAM_INT);
// }
$hold = 1;
for ($i = 0; $i < count($data); $i++) {
    for($j = 0;$j<count($data[$i]);$j++){
        $stmt->bindParam($hold, $data[$i][$j], PDO::PARAM_INT);
        $hold++;
    }
}

$status = $stmt->execute();


if ($status) {
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
}

$res = $data;
// $res =$sql;
echo json_encode($res);
