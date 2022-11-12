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

        <div class="infossd" id="informations">
            <p id="colorcode"> Légende des couleurs </p>
            <div id="green">
                <div></div>
                <p>Information correcte</p>
            </div>

            <div id="orange">
                <div></div>
                <p>Information partiellement correcte. NB : La case du fruit du démon apparait en orange si le personnage en possède un mais qu'il est du mauvais type. La case age s'affiche en orange si le personnage est dans une tranche d'age de 10 ans autour de la bonne réponse.</p>
            </div>

            <div id="red">
                <div></div>
                <p>Information incorrecte</p>
            </div>
        </div>

        <img id="background" src="images/bg.png">
        <a href="index.php" id="logo"><img  src="images/logo.png"></a>
        <div id="indications">
            <p>Devinez le personnage du jour !</p>
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
                                                <script> document.getElementById('$actname $cle').addEventListener('mousedown', ()=>{
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
                <p class="entete">Age</p>
           </div>
           <hr class="hrr">
           <div id="guesslist">
            </div>
            <div class="sucessd" id="sucess">
                <p id="msgfel"> Bien joué ! </p>
                <img src="images/luffy.png" id="imgfel">
                <p id="youguess"> Vous avez trouvé :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </p>
                <p id="nameguess">Monkey D. Luffy </p>
                <p id="nextin"> Prochain perso dans </p>
                <p id="timer"></p>
                <a id="lobby" href="bounty.php">
                    <img src="images/bounty.png">
                    <p id="nextgame"> Bounty </p>
                </a>

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