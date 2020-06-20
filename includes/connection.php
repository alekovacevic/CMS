<?php

try {
    $pdo = new PDO('mysql:host=localhost;port=3308;dbname=portal', 'root', '');
} catch (PDOException $e) {
    exit('Database error.');
}

?>
