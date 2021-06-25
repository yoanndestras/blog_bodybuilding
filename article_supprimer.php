<?php

$pdo = new PDO('mysql:host=localhost;dbname=blog;port=3306', 'root', 'root');
$pdo->exec('SET NAMES UTF8');



$querycomm = $pdo->prepare
(
    "DELETE FROM commentaires WHERE Id_article = ?"
);
$querycomm->execute([$_GET['Id_article']]);



$queryarticle = $pdo->prepare
(
    "DELETE FROM article WHERE Id_article = ?"
);
$queryarticle->execute([$_GET['Id_article']]);




header('Location: administration.phtml');