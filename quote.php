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
        $rloquette="SELECT quoteid FROM dailyid WHERE id=1";
        $rlesult = mysqli_query($connexion,$rloquette);
        $rlow = mysqli_fetch_assoc($rlesult);
        $idle = $rlow['quoteid'];
        $alt = "SELECT quote,quoteimg FROM persos WHERE id=$idle";
        $altresult = mysqli_query($connexion,$alt);
        $altrow = mysqli_fetch_assoc($altresult);
        $quoted = $altrow['quote'];
        $quotimg = $altrow['quoteimg'];
        echo"<script> var tss ='".$quotimg."';</script>";
        
    ?>
    <head>
        <link rel="stylesheet" href="css/quote.css">
        <title> Onedle </title>
        <link rel="icon" type="image/x-icon" href="images/fav.ico">
    </head>

    <body>
        <img id="background" src="images/bg.png">
        <a href="index.php" id="logo"><img  src="images/logo.png"></a>
        <div id="indications">
            <p>Devinez l'auteur de la citation du jour !</p>
        </div>
        

        <div id="cadre">
        
            <p id="quoteguess"> <?php echo $quoted; ?> </p>

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
            <a id="lobby" href="splash.php">
                <img src="images/splash.png">
                <p id="nextgame"> Splash Art </p>
            </a>

        </div>

        <?php
            if(isset($_COOKIE["guessesq"])){
                $tab = explode("a",$_COOKIE["guessesq"]);
                $tabj = json_encode($tab);
                echo "<script>
                        var tabgues = $tabj;
                       </script>";
                
            }
        ?>
        <script src="js/quote.js"></script>
    </body>

</html>