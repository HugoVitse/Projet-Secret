<html>
    <?php 
        //if(!(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on')) header("Location:https://onedle.rf.gd/splash.php");
        include "connexion.php";
        include "dailyguess.php";
        $requete = "SELECT * From persos";
        $result = mysqli_query($connexion,$requete);
        $size = mysqli_num_rows($result);
        $i=0;
        while($row = mysqli_fetch_assoc($result)){

            $persos[$i] = $row;
            $i++;
        
        }
        $rloquette="SELECT splashid FROM dailyid WHERE id=1";
        $rlesult = mysqli_query($connexion,$rloquette);
        $rlow = mysqli_fetch_assoc($rlesult);
        $idle = $rlow['splashid'];
        echo"<script> var tss ='".$idle."';</script>";
        
        
    ?>
    <head>
        <link rel="stylesheet" href="css/splash.css">
        <title> Onedle </title>
        <link rel="icon" type="image/x-icon" href="images/fav.ico">
    </head>

    <body>
        <img id="background" src="images/bg.png">
        <a href="index.php" id="logo"><img  src="images/logo.png"></a>
        <div id="indications">
            <p>Devinez le splash art du jour !</p>
        </div>
        

        <div id="cadre">
        
            <canvas width="388px" height="388px" id="splashart"></canvas>

        </div>

        <div class="searchbarOK" id="searchbar">
            <img src="images/searchbar.png">
            <input id="saisie" type="text">
            <img id ="button" src="images/button.png">
            <?php
            
                for($i=0;$i<26;$i++){
                    echo"
                        <div class='alphabetical' id='letter$i'>";
                            for($j=0; $j<$size;$j++){
                                $actrow = $persos[$j];
                                $actname = $actrow['nom'];
                                $actid = $actrow['id'];
                                $actimg = "images/".$actrow['image'];
                                $allnames = explode(" ",$actname);
                                foreach($allnames as $cle=>$val){
                                    if((strtolower($val))[0] == chr($i+97)){
                                        echo "<div class='persobox' id='$actname $cle'>
                                                <script> 
                                                document.getElementById('$actname $cle').addEventListener('mousedown', ()=>{
                                                    if(isstarted == false){
                                                        isstarted = true;
                                                        document.querySelector('#forhead').classList.add('foreheadopa');
                                                        document.querySelector('#forhead').classList.remove('foreheade');
                                                        document.querySelector('hr').classList.add('hrrOpa');
                                                        document.querySelector('hr').classList.remove('hrr');
                                            
                                                    }
                                                    inp.value='';
                                                    guess = '$actname $cle';
                                                    console.log(guess);
                                                    guessid = ((document.getElementById(guess).childNodes)[3]).getAttribute('id');
                                                    newdisplay.classList.remove('alphabeticalopa');
                                                    newdisplay.classList.add('alphabetical');
                                                    makeAguess(guessid);
                                                });</script>
                                                <div id='$actid' style='display:none'></div>
                                                <img src='$actimg'>
                                                <p class='paraguess'> $actname </p>


                                            </div>";
                                            break;
                                    }
                                }
                            }

                    echo"
                        </div>
                    
                    
                    
                    ";
                }
                mysqli_close($connexion);
            ?>
        </div>
        <div id="guesslist">
        </div>

        <div class="sucessd" id="sucess">
            <p id="msgfel"> Bien joué ! </p>
            <img src="images/luffy.png" id="imgfel">
            <p id="youguess"> Vous avez trouvé :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </p>
            <p id="nameguess">Monkey D. Luffy </p>
            <p id="nextin"> Prochain perso dans </p>
            <p id="timer"></p>
            <a id="lobby" href="classic.php">
                <img src="images/classic.png">
                <p id="nextgame"> Classique </p>
            </a>

        </div>

        <?php
            if(isset($_COOKIE["guessesp"])){
                $tab = explode("a",$_COOKIE["guessesp"]);
                $tabj = json_encode($tab);
                echo "<script>
                        var tabgues = $tabj;
                       </script>";
                
            }
        ?>
        <script src="js/splash.js"></script>
    </body>

</html>