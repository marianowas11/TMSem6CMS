<?php
session_start();
$login = htmlentities ($_POST['user'], ENT_QUOTES, "UTF-8"); 
$haslo = htmlentities ($_POST['pass'], ENT_QUOTES, "UTF-8"); 
$dir = htmlentities ($_POST['url'], ENT_QUOTES, "UTF-8");
echo $dir;


if ($login == "admin" && $haslo == "admin")
{

$admin = true;
echo '<script language="javascript">';
echo 'alert('.$admin.')';
echo '</script>';
$_SESSION ['admin'] = $admin;
echo $_SESSION ['admin'];
header("Location: http://marianowas11.beep.pl/z10".$dir);
exit();
}
$admin = false;
$_SESSION ['admin'] = $admin;
header('Location: http://marianowas11.beep.pl/z10'.$dir );
?>