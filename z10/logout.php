<?php 
session_start();
$_SESSION ['admin'] = false;
$_SESSION ['ok']= false;
//header("Location: http://marianowas11.beep.pl/z10/");
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>