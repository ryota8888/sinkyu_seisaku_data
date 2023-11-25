<?php

$dsn = 'mysql:host=localhost;dbname=bluearchive_database;charset=utf8';
$user = 'root';
$pass = '';

$pdo  = new PDO($dsn, $user, $pass);
$raw = file_get_contents('php://input');
$data = json_decode($raw);

// $sql = 'SELECT name_alpha FROM char_info WHERE rarity in (1,2)';
$sql = "SELECT name_alpha FROM char_info WHERE rarity in (" . str_repeat('?,', count($data) - 1) . "?)";

$stmt = $pdo->prepare($sql);

for ($i = 0; $i < count($data); $i++) {
    $stmt->bindParam($i + 1, $data[$i], PDO::PARAM_INT);
}

$status = $stmt->execute();


if ($status) {
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
}

$res = $data;
echo json_encode($res);



// $res = "(" . str_repeat('?,', count($data) - 1) . "?)";
// $raw = file_get_contents('php://input');
// $data = json_decode($raw);
// $res = $data;

// echo json_encode($res);
