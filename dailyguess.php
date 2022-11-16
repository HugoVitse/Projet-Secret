<?php
$today = date("Y-m-d");
if(!isset($_COOKIE["lastday"])) setcookie("lastday",$today,time()+170002800);
else{
    if(($_COOKIE["lastday"])!= $today){
        if(!isset($_COOKIE["guesses"]))setcookie("guesses","",time()+170002800);
        else setcookie("guesses","",time()+170002800);
        setcookie("lastday",$today,time()+170002800);
        header("Location:classic.php");
    }
}
$requete = "SELECT nom FROM persos";
$other = "SELECT * FROM dailyid WHERE id=1";
$result = mysqli_query($connexion,$requete);
$result2 = mysqli_query($connexion,$other);
$size = mysqli_num_rows($result);
$row = mysqli_fetch_assoc($result2);
date_default_timezone_set('Europe/Paris');
$today = date("Y-m-d");
if($today != $row['lastupdate']){
    $newint = rand(0,$size);
    $newrequete = "UPDATE dailyid SET classicid = $newint, lastupdate = '$today' WHERE id=1";
    mysqli_query($connexion,$newrequete);
}




?>