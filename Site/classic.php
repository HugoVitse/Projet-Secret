<html>
    <?php
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

    
    
    ?>

    <head>
        <link rel="stylesheet" href="css/classic.css">
    </head>


    <body>
        <img id="background" src="images/bg.png">
        <a href="index.php" id="logo"><img  src="images/logo.png"></a>
        <div id="indications">
            <p>Devinez le personnage du jour !</p>
        </div>
        <div id="searchbar">
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
                                                <script> document.getElementById('$actname $cle').addEventListener('click', ()=>{
                                                    if(isstarted == false){
                                                        isstarted = true;
                                                        document.querySelector('#forhead').classList.add('foreheadopa');
                                                        document.querySelector('#forhead').classList.remove('foreheade');
                                                        document.querySelector('hr').classList.add('hrrOpa');
                                                        document.querySelector('hr').classList.remove('hrr');
                                            
                                                    }
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

        <div id="guess">
           <div class ="foreheade" id="forhead">
                <p class="entete">Personnage</p>
                <p class="entete">Nom</p>
                <p class="entete">Fruit du Démon</p>
                <p class="entete">Haki</p>
                <p class="entete">Genre</p>
                <p class="entete">Occupation</p>
                <p class="entete">Espèce</p>
                <p class="entete">Océan d'origine</p>
                <p class="entete">Style de combat</p>
           </div>
           <hr class="hrr">
           <div id="guesslist">
            </div>
            <div id="resaux">
                <a id="twitter">
                    <img src="images/twitter.png">
                </a>
                <div id="infos">
                    <img src="images/infos.png">

                </div>
                <p id="copyright"> Onedle - 2022 </p>
            </div>
        </div>
        <?php
            if(isset($_COOKIE["guesses"])){
                $tab = explode("a",$_COOKIE["guesses"]);
                $tabj = json_encode($tab);
                echo "<script>
                        var tabgues = $tabj;
                       </script>";
                
            }
        ?>
        
        <script src="js/classic.js"></script>
    </body>



</html>