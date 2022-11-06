<?php
$requete = "SELECT nom FROM persos";
$other = "SELECT * FROM dailyid WHERE id=1";
$result = mysqli_query($connexion,$requete);
$result2 = mysqli_query($connexion,$other);
$size = mysqli_num_rows($result);
$row = mysqli_fetch_assoc($result2);


$today = date("Y-m-d");
if($today != $row['lastupdate']){
    $newint = rand(0,$size);
    $newrequete = "UPDATE dailyid SET classicid = $newint, lastupdate = '$today' WHERE id=1";
    mysqli_query($connexion,$newrequete);
}




?>