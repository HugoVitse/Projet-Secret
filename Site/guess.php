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
            if($cle=="age"){
                if($val == $ligne2["age"]) echo"1:";
                else{
                    if( ($ligne2["age"]>$val-5) && ($ligne2["age"]<$val+5) ) echo"2:";
                    else echo"3:";
                }
            }
            if($cle == "fdd"){
                if($val == $ligne2["fdd"]) echo"1:";
                else{
                   if($val!="Aucun" && $ligne2["fdd"] != "Aucun") echo"2:"; 
                   else echo"3:";
                }
                

            }
            else{
               if($ligne2[$cle] == $val) echo "1:";
                else{
                    if(strpos(($ligne2[$cle]),$val) !== false OR strpos($val,($ligne2[$cle])) !== false) echo "2:";
                    else echo "3:";
                } 
            }
            
            
        }
        
        
        mysqli_close($connexion);
    }
?>
