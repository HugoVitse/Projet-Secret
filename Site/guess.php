<?php 

    if(count($_POST)>0){
        include "connexion.php";
        $other = "SELECT * FROM dailyid WHERE id=1";
        $result2 = mysqli_query($connexion,$other);
        $row = mysqli_fetch_assoc($result2);
        $result = "false";
        if($_POST['id'] == $row['classicid']) $result = "true";
        echo $result.":";
        $ide = $_POST['id'];
        $ide2 = $row['classicid'];
        $roquette = "SELECT * From persos WHERE id = $ide";
        $ronquette = "SELECT * From persos WHERE id = $ide2";
        $resultat = mysqli_query($connexion,$roquette);
        $resultat2 = mysqli_query($connexion,$ronquette);
        $ligne = mysqli_fetch_assoc($resultat);
        $ligne2 = mysqli_fetch_assoc($resultat2);
        foreach($ligne as $cle => $val){
            echo $val.":";
            if($ligne2[$cle] == $val) echo "1:";
            else{
                if(strpos(($ligne2[$cle]),$val) OR strpos($val,($ligne2[$cle]))) echo "2:";
                else echo "3:";
            }
        }
        
        
        mysqli_close($connexion);
    }
?>