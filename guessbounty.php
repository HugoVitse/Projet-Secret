<?php

if(count($_POST)>0){
    include "connexion.php";

    $ide = (int)$_POST["id"];
    $bount = (int)$_POST["bounty"];


    $requete47 = "SELECT bounty FROM persosprime WHERE id=$ide";
    $result47 = mysqli_query($connexion,$requete47);
    $row47 = mysqli_fetch_assoc($result47);

    if( $bount <  (int)$row47["bounty"]) echo "1";
    if( $bount >  (int)$row47["bounty"]) echo "2";
    if( $bount ==  (int)$row47["bounty"]) echo "3";

    mysqli_close($connexion);
 
}

?>