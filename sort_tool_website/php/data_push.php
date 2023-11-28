<?php

$dsn = 'mysql:host=localhost;dbname=bluearchive_database;charset=utf8';
$user = 'read_select_only';
$pass = '';

$pdo  = new PDO($dsn, $user, $pass);
$raw = file_get_contents('php://input');
$data = json_decode($raw);

$sql = $data;
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();
if ($status) {
    $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
}

echo json_encode($res);
