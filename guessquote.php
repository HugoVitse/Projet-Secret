<?php 

    if(count($_POST)>0){
        include "connexion.php";
        $other = "SELECT * FROM dailyid WHERE id=1";
        $result2 = mysqli_query($connexion,$other);
        $row = mysqli_fetch_assoc($result2);
        $result = "false";
        if($_POST['id'] == $row['quoteid']) $result = "true";
        echo $result;
        
        
        
        mysqli_close($connexion);
    }
?>
