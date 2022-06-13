<?php 
session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$directory = $_SERVER['REQUEST_URI'];
    $dirr = strstr($directory, "z9/");
    $str2 = substr($dirr, 3);
    $_SESSION ['link'] = $str2;
$directory = $_SESSION ['link'];
$isadmin = $_SESSION ['admin'];
if ($_SESSION['ok'] == 1){
    $_SESSION['ok'] = 0;
    echo '<script language="javascript">';
    echo 'alert("Edycja pomyślna")';
    echo '</script>';
}

?>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <title>Jackowski</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    <link rel="stylesheet" href="main.css">
</head>




<body id='body'>
    
<div id='top'> </div>
<div id='left'> 
<a href='about.php'>O firmie</a><br><br>
    <a href='kontakt.php'>Kontakt</a><br><br>
    <a href='mapa.php'>Jak do nas dotrzeć</a><br><br>
    <a href='oferta.php'>Oferta</a><br><br>
    <a href='chatbot.php'>Chatbot</a><br><br>
    <?php 
       
        if($isadmin==true) 
  {
      echo "<a href='logout.php' class='btn btn-mybutton btn btn-dark' role='button'>Wyloguj</a>";
        ?>
    
   <?php }
   else
   {
    echo  "<form method='post' action='admin.php'>Login:<input type='text' name='user' maxlength='15' size='15'><br>Hasło:<input type='password' name='pass' maxlength='15' size='15'><input type='hidden' name='url' value= '".$str2."'><br><input type='submit' class='btn-primary' value='Zaloguj'/></br></form></div>";
    
   }
   ?>

    </div>
    <div id='right'> 
        <h1>
        <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=Politechnika%20Bydgoska%20im.%20Jana%20i%20J%C4%99drzeja%20%C5%9Aniadeckich,%20Profesora%20Sylwestra%20Kaliskiego%207,%2085-796%20Bydgoszcz&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://2piratebay.org"></a><br><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}</style><a href="https://www.embedgooglemap.net">wordpress add google map</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div></div>     
</h1>

     </div>




</body>
</html>