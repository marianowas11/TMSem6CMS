<?php
include 'dbConn.php';
$text = $_POST['editor1'];
    echo $text;
    $link = mysqli_connect( $dbhost, $dbuser, $dbpassword, $dbname);
    mysqli_query($link,"INSERT INTO textKontakt (text) VALUES ('" . mysqli_real_escape_string($link,$text) . "')");
    $_SESSION ['ok']= true;
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>