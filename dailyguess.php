<?php
$today = date("Y-m-d");
if(!isset($_COOKIE["lastday"])) setcookie("lastday",$today,time()+170002800);
else{
    if(($_COOKIE["lastday"])!= $today){
        setcookie("guesses","",time()+170002800);
        setcookie("lastday",$today,time()+170002800);
        header("Location:classic.php");
    }
}
$requete = "SELECT nom FROM persos";
$requete3 = "SELECT id FROM persosprime";
$other = "SELECT * FROM dailyid WHERE id=1";
$result = mysqli_query($connexion,$requete);
$result2 = mysqli_query($connexion,$other);
$result3 = mysqli_query($connexion,$requete3);
$size = mysqli_num_rows($result);
$size2 = mysqli_num_rows($result3);
$row = mysqli_fetch_assoc($result2);
date_default_timezone_set('Europe/Paris');
$today = date("Y-m-d");
if($today != $row['lastupdate']){
    $newint = rand(1,$size);
    $newint2 = rand(1,$size2);
    $newrequete = "UPDATE dailyid SET bountyid = $newint2, classicid = $newint, lastupdate = '$today' WHERE id=1";
    mysqli_query($connexion,$newrequete);
}




?>